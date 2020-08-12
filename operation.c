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
void calculer_t3_sequenciel(int* t1,int* t2, int* t3){
	int somme = 0, i =0;
	float moyenne = 0;
	clock_t debut = chrono();
	clock_t fin;
	double time_elapse;
	for(i = 0; i<TABLE_SIZE; i++){
		t3[i]= t1[i] * t2[i];
		somme += t3[i];
	}
	fin = chrono();
	time_elapse = calculer_temps_operation(debut, fin);
	moyenne =(float) somme / TABLE_SIZE;
	printf("\n[%d] Somme = %d ==> Moyenne = %f\n", i,somme, moyenne);
	printf("Temps d'opération %lf", time_elapse);
};

char* calculer_t3_synchrone(int * tableau){
	
};
char* calculer_t3_omp(int * tableau){
	
};

int generate_random_value(){
	return rand()%(MAX_RANDOM - MIN_RANDOM) + MIN_RANDOM;
}

int* allouer_espace_memoire(){
	int *tableau = (int*) calloc(TABLE_SIZE, sizeof(int));
    if(tableau == NULL)
    {
        perror("L'allocation de la mémoire à échoué");
        exit(1);
    }
    return tableau;
}

clock_t chrono(){
	printf("clock :  %f\n",(double) clock());
	return clock();
}


double calculer_temps_operation(clock_t debut, clock_t fin){
	/* Programmation defensive */
	if(fin < debut){
		clock_t temp = debut;
		debut = fin;
		fin = temp;
	}
	return (double)(fin - debut) / CLOCKS_PER_SEC;
}
