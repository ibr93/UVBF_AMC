#ifndef HEADER_OPERATION
#define HEADER_OPERATION

/* Import des fichiers d'entête */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

/* Déclaration des constantes */
#define TABLE_SIZE 1000000
#define MIN_RANDOM -10
#define MAX_RANDOM 10

void afficherMenu();
int* initialiserTableau();
void calculer_t3_sequenciel(int* t1,int* t2, int* t3);
char* calculer_t3_synchrone(int tableau[TABLE_SIZE]);
char* calculer_t3_omp(int tableau[TABLE_SIZE]);
int generate_random_value();
int* allouer_espace_memoire();
clock_t chrono();
double calculer_temps_operation(clock_t debut, clock_t fin);
#endif
