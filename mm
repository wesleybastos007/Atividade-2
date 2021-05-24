#include <iostream>
#include <stdio.h>
#include <stdlib.h>
using namespace std;

void maxMin(int* vetor, int tam, int *min, int *max){
  *min = 9999999;
  *max = -9999999;
  for(int i=0; i<tam; i++){
    if(vetor[i] > *max){ 
      *max = vetor[i];
    }
    if(vetor[i] < *min){
      *min = vetor[i];
    }
  }
}

int main() {
  int tamanho, aux;
  int min, max;
 
  
  cout << "Defina o tamanho do vetor\n";
  cin >> tamanho;
  int vetor[tamanho];

  for(int i=0; i<tamanho; i++){
    cout << "Digite um numero\n";
    cin >> aux;
    vetor[i] = aux;
    
  }
  
  maxMin(vetor, tamanho, &min, &max);
  cout<< endl;
  for(int i=0; i<tamanho ;i++){
    cout << vetor[i] << ", ";
  }

  cout << "\n" << "Max=" << max << "   Min=" << min;

  return 0;
}