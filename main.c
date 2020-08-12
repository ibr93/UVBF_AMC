/* Import des fichiers d'entÍte */
#include "operation.h"

int main(int argc, char** argv) {
	// On commence par initialiser le g√©n√©rateur de nombre pseudo-al√©atoires.
    srand( time( NULL ) );
	/* DÈclaration des tableaux t1 et t2 */ 
	int *t1,*t2, *t3;
	t3 = allouer_espace_memoire();
	puts("Initialisation du tableau T1");
	t1 = initialiserTableau();
	puts("Initialisation du tableau T2");
	t2 = initialiserTableau();
	
	afficherMenu();
	
	calculer_t3_sequenciel(t1,t2, t3);
	// TODO suprimÈ
	free(t1);
	free(t2);
	free(t3);
	return 0;
}
