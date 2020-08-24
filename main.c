/* Import des fichiers d'ent�te */
#include "operation.h"

int main(int argc, char** argv) {
	
	// On commence par initialiser le générateur de nombre pseudo-aléatoires.
    srand( time( NULL ) );
	/* D�claration des tableaux t1 et t2 */ 
	int *t1,*t2, *t3, *t3_posix, *t3_omp;
	t3 = allouer_espace_memoire();
	t3_posix = allouer_espace_memoire();
	t3_omp = allouer_espace_memoire(); 
	clearScreen();
	printf("\n########################### N = %d ###############################\n", TABLE_SIZE);
	int nb_thread = get_thread_count();
	puts("\tInitialisation du tableau T1");
	t1 = initialiserTableau();
	puts("\tInitialisation du tableau T2");
	t2 = initialiserTableau();
	puts("\n####################### Calcul sequencielle de T3 ##############################");
	calculer_t3(t1,t2, t3);
	puts("######################### Calcul POSIX de T3 ###################################");
	calculer_t3_posix(t1,t2, t3_posix, nb_thread);
	puts("######################## Calcul OpenMP de T3 ##################################");
	calculer_t3_omp(t1,t2, t3_posix);
//	getchar();
	// Liberation des memoires allouer
	free(t1);free(t2);free(t3);free(t3_omp);free(t3_posix);
	return 0;
}
