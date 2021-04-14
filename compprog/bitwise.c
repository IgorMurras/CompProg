#include<stdio.h>
#include<stdint.h>

int32_t ehPar(int32_t a) {
    return ~a & 1; // inverte o ultimo bit e faz and com 1
}
int32_t mod8(int32_t a){ 
    return (a & 7); // os ultimos 3 bits estão ligados 
}

int32_t negativo(int32_t a){ 
    return (~a)+1; // os ultimos 3 bits estão ligados 
}

int32_t bitwiseand(int32_t a, int32_t b){ 
    return ~((~a) | (~b)); // demorgan
}

int32_t ehIgual(int32_t a, int32_t b){ 
    return (a & b) ^ a; // todo
}
int32_t limpaBitN(int32_t a, int8_t b){ 
    return a & ~(1<<b) ; // and com o invertido do 1 deslocado pra posicao p
}

int32_t bitEmP(int32_t a, uint8_t b){ 
    return (a>>b) & 1; // mesma logica do numero par só que deslocado
}      

int32_t byteEmP(int32_t a, uint8_t b){ 
    return (a >> (b << 3) ) & 255 ; // mesma logica do bit em p só que deslocando a cada 2^3 intervalos (para andar 8 bits/2byte)
}    

int32_t setaByteEmP(int32_t a, int32_t b, uint8_t p){ 
    return ( ~( 255 << ( p<<3 ) ) & a ) | (b << ( p<<3 ) )  ; 
    // primeiro zeramos o byte na posicao do byte p (por meio da inversao de 1111 1111 [= 255] deslocado para a posição do byte
    // e depois fizemos AND do inverso de 255 com X que é o valor com byte a ser alterado, obtendo assim a posicao toda 0000 0000)
    // depois disso fazemos o OR do resultado anterior com Y (byte a ser inserido) deslocado para a posicao requisitada
    // obtendo a insercao de Y no lugar do byte desejado 
}

int32_t minimo(int32_t x, int32_t y){
    return y ^ ((x ^ y) & -(x < y)); // pensar
} 

int32_t negacaoLogica(int32_t x){ 
    return  (x^~x);
}


int main(void){

    //printf("%d\n",ehIgual(11,15));
    
    printf("%d\n",negativo(82));
    
    
    return 0;
}

