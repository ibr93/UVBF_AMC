/* Import des fichiers d'entÍte */
#include "operation.h"

int main(int argc, char** argv) {
	int nb_thread = get_thread_count();
	// On commence par initialiser le g√©n√©rateur de nombre pseudo-al√©atoires.
    srand( time( NULL ) );
	/* DÈclaration des tableaux t1 et t2 */ 
	int *t1,*t2, *t3, *t3_posix, *t3_omp;
	t3 = allouer_espace_memoire();
	t3_posix = allouer_espace_memoire();
	t3_omp = allouer_espace_memoire();
	puts("Debut d'initialisation du tableau T1");
	t1 = initialiserTableau();
	puts("Fin d'initialisation du tableau T1");
	puts("Debut d'initialisation du tableau T1");
	t2 = initialiserTableau();
	puts("Fin d'initialisation du tableau T2");
	puts("************************************");
	puts("Calcul sequencielle de T3");
	calculer_t3(t1,t2, t3);
	puts("************************************");
	puts("************************************");
	puts("Calcul POSIX de T3");
	calculer_t3_posix(t1,t2, t3_posix, nb_thread);
	puts("************************************");
	// Liberation des memoires allouer
	free(t1);free(t2);free(t3);free(t3_omp);free(t3_posix);
	return 0;
}
