/* Import des fichiers d'ent�te */
#include "operation.h"

/* La fonction initialise un tableau et retourne un pointeur vers le tableau */
int* initialiserTableau(){
	
	int i, *tableau;
	tableau = allouer_espace_memoire();
	for(i=0; i<TABLE_SIZE; i++){
		*(tableau + i) = generate_random_value();
	//	printf("Tableau indice %d %d \n", i, tableau[i]);
	}
	return tableau;
};

/**
*	La fonction prend en param�tre les tableaux d'entier t1, t2 et t3
*	on initialise t3 de sorte que chaque i de t3 correspond respectivement au produit de t1, t2
*	On calcule la somme et affiche des entr�s de t3
*	On calcule et affiche la moyenne des entr�es de t3	 
*/
void calculer_t3(int* t1,int* t2, int* t3){
	clock_t debut = chrono();
	int somme = 0, i =0;
	float moyenne = 0;
	clock_t fin;
	double time_elapse;
	for(i = 0; i<TABLE_SIZE; i++){
		t3[i]= t1[i] * t2[i];
		somme += t3[i];
	}
	fin = chrono();
	time_elapse = calculer_temps_operation(debut, fin);
	moyenne =(float) somme / TABLE_SIZE;
	afficherResultat(somme, moyenne, time_elapse);
};

/**
*	La fonction est une version multi thred de la fonction calculer_t3
*/
void calculer_t3_posix(int* t1,int* t2, int* t3, int nb_thread){
	clock_t debut = chrono();
	int somme = 0, i =0;
	float moyenne = 0;
	clock_t fin;
	double time_elapse;
	pthread_t* threads= allouer_espace_memoire_thread(nb_thread);
	pthread_t thread_restant;
//	puts("Debut de creation des threads");
	// partitionnement
	int nbr_element = TABLE_SIZE/nb_thread;
	int nbr_element_restant =TABLE_SIZE % nbr_element;
	int has_restant = ((nbr_element * nb_thread )!= TABLE_SIZE);
	int temp;
	
	// nous v�rifions s'il reste des reste tous tuples sont utilis�s
	if(has_restant){
		create_task(&thread_restant,nbr_element * nb_thread, TABLE_SIZE, t1, t2,t3);
	}
	// Nous parcourrons le tableau des threads et lancons la cr�ation des threads
	for(i=0 ; i<nb_thread; i++){
		temp = i * nbr_element;
		create_task(&threads[i],temp, temp + nbr_element, t1, t2, t3 );
	}
	
	//puts("Fin de cr�ation des threads");	
	if(has_restant){
		somme += wait_task(thread_restant);
	}
	
	for(i=0 ; i<nb_thread; i++){
		somme += wait_task(threads[i]);
	}
	moyenne =(float) somme / TABLE_SIZE;
	fin = chrono();
	time_elapse = calculer_temps_operation(debut, fin);
	afficherResultat(somme, moyenne, time_elapse);
	free(threads);
};

/**
*	La fonction est une version OpenMP de la fonction calculer_t3_sequenciel
*/
char* calculer_t3_omp(int* t1,int* t2, int* t3){
	clock_t debut = chrono();
	int somme = 0, i =0;
	float moyenne = 0;
	clock_t fin;
	double time_elapse;
	#pragma omp parallel for reduction(+:somme)
	for(i = 0; i<TABLE_SIZE; i++){
		t3[i]= t1[i] * t2[i];
		somme += t3[i];
	}
	moyenne =(float) somme / TABLE_SIZE;
	fin = chrono();
	time_elapse = calculer_temps_operation(debut, fin);
	afficherResultat(somme, moyenne, time_elapse);
};

/*
* 	Cette fonction retourne des valeurs al�atoire compris les valeurs des directives pr�processeur MAX_RANDOM et MIN_RANDOM	
*/
int generate_random_value(){
	return rand()%(MAX_RANDOM - MIN_RANDOM) + MIN_RANDOM;
}

/*
*	Cette fonction reserve de l'espace memoire correspondant a la valeur du directive pr�processeur TABLE_SIZE et retourne un pointeur d'entier
*/
int* allouer_espace_memoire(){
	int *tableau = (int*) calloc(TABLE_SIZE, sizeof(int));
    if(tableau == NULL)
    {
        error_message("allouer_espace_memoire", "L'allocation de la memoire a echoue");
        exit(1);
    }
    return tableau;
}
/*
*	Cette fonction reserve de l'espace memoire correspondant a la valeur pass� en param�tre et retourne un pointeur d'entier
*/
int *allouer_espace_memoire_avec_param(int nbr){
	int *tableau = (int*) calloc(nbr, sizeof(int));
    if(tableau == NULL)
    {
        error_message("allouer_espace_memoire_avec_param" , "L'allocation de la memoire a echoue");
        exit(1);
    }
    return tableau;
}
/*
*	Cette fonction reserve de l'espace memoire correspondant a la valeur pass� en param�tre et retourne une structure Operation
*/
Operation allouer_espace_memoire_struct_operation(int nbr){
	Operation tableau = (Operation) calloc(nbr, sizeof(operation));
    if(tableau == NULL)
    {
        error_message("allouer_espace_memoire_avec_param" , "L'allocation de la memoire a echoue");
        exit(1);
    }
    return tableau;
}
/*
*	Cette fonction reserve de l'espace memoire correspondant au nombre de threads de la machine qui execute cette fonction
*	 et retourne un pointeur processus legers
*/
pthread_t* allouer_espace_memoire_thread(int nb_thread){
	pthread_t *tableau = (pthread_t*) calloc(nb_thread, sizeof(pthread_t));
    if(tableau == NULL)
    {
        error_message("allouer_espace_memoire_thread", "L'allocation de la memoire a echoue");
        exit(1);
    }
    return tableau;
}

/*
*	Cette fonction retourne le nombre de clock execut� depuis le lancement de l'application
*	A not� que clock_t est un alias de Long (typedef long clock_t)
*/
clock_t chrono(){
//	printf("clock :  %f\n",(double) clock());
	return clock();
}

/*
*	Cette fonction prend en param�tre deux nombres entiers correspondant a des nombres d'execution des clock
*	fait la difference et retourne le temps en seconde correspondant
*/
double calculer_temps_operation(clock_t debut, clock_t fin){
	/* Programmation defensive */
	if(fin < debut){
		clock_t temp = debut;
		debut = fin;
		fin = temp;
	}
//	return (double)(fin - debut) / CLOCKS_PER_SEC;
	return (double)(fin - debut) / CLOCKS_PER_SEC;
}

/*
*	cette fonction fin un appel asm afin de recuperer et retourner le nombre de thread de votre machine
*	Nous ne l'avons pas tester sur un processeur different d'INTEL
*/
int get_thread_count(){
	unsigned int ncores=0, nthreads=0;
	asm("cpuid" : "=a" (ncores), "=b" (nthreads) : "a" (0xb), "c" (0x1) :);
	printf("\tVotre machine a %d Coeurs dont %d Threads\n", ncores, nthreads,(ncores != nthreads)? "oui" : "non");
	return nthreads;
//	return 10;
}

/*
*	Cette fonction affiche les resultats d'operation
*/
void afficherResultat(int somme, float moyenne, double time_elapse){
	printf("\n\tSomme = %d\n\tMoyenne = %f\n\tTemps d'operation %lf\n",somme, moyenne,time_elapse);
}
/*
* cette fonction est executer dans le thread 
*	il prend en parametre 
*/
void *execute_task(void* args){
	Operation ak = (Operation) args;
	int i;
	for(i = ak->min; i<ak->max; i++){
			ak->t3[i]= ak->t1[i] * ak->t2[i];
			ak->somme += ak->t3[i];
	}
//	printf("\nFom execute_task min: %d max:%d somme: %d", ak->min, ak->max, ak->somme);
	pthread_exit((void *) ak);
}
/*
*	Cette fonction permet de cr�er les processus
*/
void create_task(pthread_t* task, int min, int max, int* t1, int* t2, int* t3){
	Operation op = init_operation(min,max,t1,t2,t3);
	//creation d'un tableau � MIN_MAX entr�s
	//printf("\nFom create_task min: %d max:%d", op->min, op->max);
	if(pthread_create(task, NULL, execute_task,op)){
		error_message("pthread_create","Erreur lors de la creation du thread");
		return;
	}
}
/*
*	Cette fonction permet d'attendre la fin d'un processus
*/
int wait_task(pthread_t task){
	Operation op = allouer_espace_memoire_struct_operation(1);
	if(pthread_join(task,(void **)&op)){
		error_message("pthread_join", "Erreur lors de l'attente de la fin d'execution d'un thread");
		return -1;
	}
	int somme = op->somme;
	free(op);
	return somme;
}
/*
*	Cette fonction permet d'initialiser une structure operations 
*/
Operation init_operation(int min, int max, int* t1, int* t2, int* t3){
	Operation op = allouer_espace_memoire_struct_operation(1);
	op->min = min;
	op->max = max;
	op->t1 = t1;
	op->t2 = t2;
	op->t3 = t3;
//	printf("\nfrom init_operation min %d\tmax\t %d",op->min, op->max);
	return op;
}
/*
*	Cette fonction est un refractoring des messages d'erreurs
*	Elle prend en param�tre la source et le message 
*/
void error_message(char* source,char* message){
	puts(source);
	perror(message);
}
/*
*	La fonction permet d'effacer la console
*/
void clearScreen()
{
	#ifdef _WIN32
    	system("cls");
	#elif defined(unix) || defined(__unix__) || defined(__unix) || (defined(__APPLE__) && defined(__MACH__))
 	   system("clear");
	#else
    #error "Système d'exploitation non supporte."
#endif
}
