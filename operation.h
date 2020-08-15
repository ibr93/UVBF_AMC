#ifndef HEADER_OPERATION
#define HEADER_OPERATION

/* Import des fichiers d'entête */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>

/* Déclaration des constantes */
#define TABLE_SIZE 100000000
#define MIN_RANDOM -10
#define MAX_RANDOM 10
#define MIN_MAX 2

typedef struct {
	int min;
	int max;
	int *t1;
	int *t2;
	int *t3;
	int somme;
}operation,*Operation;

int *initialiserTableau();
void calculer_t3(int* t1,int* t2, int* t3);
void calculer_t3_posix(int* t1,int* t2, int* t3, int nb_thread);
char *calculer_t3_omp(int tableau[TABLE_SIZE]);
int generate_random_value();
int *allouer_espace_memoire();
int *allouer_espace_memoire_avec_param(int nbr);
pthread_t *allouer_espace_memoire_thread(int nb_thread);
Operation allouer_espace_memoire_struct_operation(int nbr);
clock_t chrono();
double calculer_temps_operation(clock_t debut, clock_t fin);
int get_thread_count();
void afficherResultat(int somme, float moyenne, double time_elapse);
void *execute_task(void* arg);
void create_task(pthread_t* task, int min, int max, int* t1, int* t2, int* t3);
int wait_task(pthread_t task);
Operation init_operation(int min, int max, int* t1, int* t2, int* t3);
void error_message(char* source,char* message);
#endif
