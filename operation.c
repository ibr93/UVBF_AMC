/* Import des fichiers d'entête */
#include "operation.h"

/* La fonction permet d'afficher le menu utilisateur */
void afficherMenu(){
	int choice;
 
  //  do
  //  {
        printf("Menu\n\n");
        printf("1. Sum\n");
        printf("2. Rest\n");
        printf("3. Exit\n");
   /*     scanf("%d",&choice);
 
        switch(choice)
        {
            case 1: break;
            case 2:  break;
            case 3: printf("Quitting program!\n");
                exit(0);
                break;
            default: printf("Invalid choice!\n");
                break;
        }*/
 
  //  } while (choice != 3);
 	// free(t1);
	// free(t2);
};


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
*	La fonction prend en paramètre les tableaux d'entier t1, t2 et t3
*	on initialise t3 de sorte que chaque i de t3 correspond respectivement au produit de t1, t2
*	On calcule la somme et affiche des entrés de t3
*	On calcule et affiche la moyenne des entrées de t3	 
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
	puts("Debut de création des threads");
	// partitionnement
	int nbr_element = TABLE_SIZE/nb_thread;
	int nbr_element_restant =TABLE_SIZE % nbr_element;
	int has_restant = ((nbr_element * nb_thread )!= TABLE_SIZE);
	int temp;
	Operation op;
	// Nous parcourrons le tableau des threads et lancons la création des threads
	for(i=0 ; i<nb_thread; i++){
		temp = i * nbr_element;
		op =init_operation(temp, temp + nbr_element,t1, t2, t3 );
		create_task(&threads[i],op );
	}
	
	// nous vérifions s'il reste des reste tous tuples sont utilisés
	if(has_restant){
		op = init_operation(nbr_element * nb_thread, TABLE_SIZE,t1, t2, t3 );
		create_task(&thread_restant,op);
	}
	puts("Fin de création des threads");
	
	for(i=0 ; i<nb_thread; i++){
		printf("i %d\n",i);
		wait_task(threads[i],NULL);
	}
	if(has_restant){
		wait_task(thread_restant,NULL);
	}
	fin = chrono();
	time_elapse = calculer_temps_operation(debut, fin);
	afficherResultat(somme, 0.0, time_elapse);
	free(threads);
	puts("end");
	
};

/**
*	La fonction est une version OpenMP de la fonction calculer_t3_sequenciel
*/
char* calculer_t3_omp(int * tableau){
	
};

/*
* 	Cette fonction retourne des valeurs aléatoire compris les valeurs des directives préprocesseur MAX_RANDOM et MIN_RANDOM	
*/
int generate_random_value(){
	return rand()%(MAX_RANDOM - MIN_RANDOM) + MIN_RANDOM;
}

/*
*	Cette fonction reserve de l'espace memoire correspondant a la valeur du directive préprocesseur TABLE_SIZE et retourne un pointeur d'entier
*/
int* allouer_espace_memoire(){
	int *tableau = (int*) calloc(TABLE_SIZE, sizeof(int));
    if(tableau == NULL)
    {
        error_message("allouer_espace_memoire", "L'allocation de la mémoire à échoué" );
        exit(1);
    }
    return tableau;
}
/*
*	Cette fonction reserve de l'espace memoire correspondant a la valeur passé en paramètre et retourne un pointeur d'entier
*/
int *allouer_espace_memoire_avec_param(int nbr){
	int *tableau = (int*) calloc(nbr, sizeof(int));
    if(tableau == NULL)
    {
        error_message("allouer_espace_memoire_avec_param" , "L'allocation de la mémoire à échoué");
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
        error_message("allouer_espace_memoire_thread", "L'allocation de la mémoire à échoué");
        exit(1);
    }
    return tableau;
}

/*
*	Cette fonction retourne le nombre de clock executé depuis le lancement de l'application
*	A noté que clock_t est un alias de Long (typedef long clock_t)
*/
clock_t chrono(){
//	printf("clock :  %f\n",(double) clock());
	return clock();
}

/*
*	Cette fonction prend en paramètre deux nombres entiers correspondant a des nombres d'execution des clock
*	fait la difference et retourne le temps en seconde correspondant
*/
double calculer_temps_operation(clock_t debut, clock_t fin){
	/* Programmation defensive */
	if(fin < debut){
		clock_t temp = debut;
		debut = fin;
		fin = temp;
	}
	return (double)(fin - debut) / CLOCKS_PER_SEC;
}

/*
*	cette fonction fin un appel asm afin de recuperer et retourner le nombre de thread de votre machine
*	Nous ne l'avons pas tester sur un processeur different d'INTEL
*/
int get_thread_count(){
	unsigned int ncores=0, nthreads=0;
	asm("cpuid" : "=a" (ncores), "=b" (nthreads) : "a" (0xb), "c" (0x1) :);
	printf("cores: %d\tThreads:%d\tHiperthreading:%s\n", ncores, nthreads,(ncores != nthreads)? "oui" : "non");
	return nthreads;
//	return 10;
}

/*
*	Cette fonction affiche les resultats d'operation
*/
void afficherResultat(int somme, float moyenne, double time_elapse){
	printf("\nSomme = %d ==> Moyenne = %f\n",somme, moyenne);
	printf("Temps d'opération %lf\n", time_elapse);
}
/*
* cette fonction est executer dans le thread 
*	il prend en parametre 
*/
void *execute_task(void* args){
	Operation op = (Operation) args;
	int i;
	for(i = op->min; i<op->max; i++){
			op->t3[i]= op->t1[i] * op->t2[i];
			op->somme += op->t3[i];
	}
	printf("\nSomme: %d", op->somme);
	pthread_exit(NULL);
}
/*
*	Cette fonction permet de créer les processus
*/
void create_task(pthread_t* task, Operation op){
	//creation d'un tableau à MIN_MAX entrés
	if(pthread_create(task, NULL, execute_task,(void *) op)){
		error_message("pthread_create","Erreur lors de la création du thread");
		return;
	}
}
/*
*	Cette fonction permet d'attendre la fin d'un processus
*/
void wait_task(pthread_t task,Operation op){
	if(pthread_join(task,NULL)){
		error_message("pthread_join", "Erreur lors de l'attente de la fin d'execution d'un thread");
		return;
	}
}
/*
*	Cette fonction permet d'initialiser une structure operations 
*/
Operation init_operation(int min, int max, int* t1, int* t2, int* t3){
	Operation op;
	op->min = min;
	op->max = max;
	op->t1 = t1;
	op->t2 = t2;
	op->t3 = t3;
	return op;
}
/*
*	Cette fonction est un refractoring des messages d'erreurs
*	Elle prend en paramètre la source et le message 
*/
void error_message(char* source,char* message){
	puts(source);
	perror(message);
	puts(" ");
}
