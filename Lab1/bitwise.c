/*
Alunos:     

 Igor Ferreira Murras    / DRE: 118156052
 
 Jonathan Suhett Barbêdo / DRE: 120021182

 Versão GCC: 10.2.0

*/
#define ANSI_COLOR_RED     "\x1b[31m"
#define ANSI_COLOR_GREEN   "\x1b[32m"
#define ANSI_COLOR_BLUE    "\x1b[34m"
#define ANSI_COLOR_RESET   "\x1b[0m"

#include<stdio.h>
#include<stdint.h>

/*Número é par ou não:
    A variável x negada deixa o bit menos significativo igual a 0, caso x seja ímpar,
    e igual a 1, caso x seja par. Ao fazer (~x & 1) passamos o ~x por uma máscara que zera
    todos os bits, exceto o menos significativo. E assim, obtemos 1 caso x seja par e 0 caso xseja ímpar
*/
int32_t ehPar(int32_t x) {
    return ~x & 1;
}

/*Módulo 8:
    7 é uma máscara que só deixa todos os bits de x igual a 0, menos os três bits menos significativos,
    que são exatamente os bits que representam a congruência de x, módulo 8  
*/
int32_t mod8(int32_t x){ 
    return (x   & 7);  
}

/* Negativo:
    Aqui aplicamos a lógica de que na representação de complemento a 2 o número com seus bits invertidos significa o seu valor negativo menos um, 
    então precisamos acrescentar 1 para obter exatamente o negativo do número em questão.
*/
int32_t negativo(int32_t x){ 
    return (~x)+1; 
}

/* BITWISEAND:
    Nesse caso a solução é obtida por meio da equivalencia constatada pelo Teorema de Demorgan, sabemos que este diz que ~(A&B) = ~A | ~B,
    então pela mesma lógica podemos obter que (A & B) = ~( ~A | ~B )
*/
int32_t bitwiseAnd(int32_t x, int32_t y){ 
    return ~((~x) | (~y));  
}


/*Igualdade:
    Nessa função utilizamos o fato do XOR de um número consigo mesmo resultar 0, então combinando isso com '!',
    é obtido 1 quando os números são iguais e 0 caso sejam diferentes, visto que !n para n diferente de 0 é igual a 0
*/
int32_t ehIgual(int32_t x, int32_t y){ 
    return !(x ^ y);   
}


/*Limpa Bit em N:
    A primeira operação realizada nesse caso é o deslocamento do valor 1 para o bit N desejado, e logo após é realizada a inversão dos bits desse valor
    obtendo 0 no bit em posição N e todos os outros com 1. Dessa forma quando realizamos um AND entre qualquer número e o esse valor obtido com apenas 
    o bit N igual a 0 o resultado é o valor x com o bit N zerado.
*/
int32_t limpaBitN(int32_t x, int8_t n){ 
    return x & ~(1<<n) ;
}

/*Bit em p:
    Aqui é realizada a mesma lógica do que foi usado para resolver a função 'ehPar', com um AND do ultimo bit com o valor 1, porém antes é feito um deslocamento
    para que o bit de comparação desejado seja movido até a posição mais à direita.

*/
int32_t bitEmP(int32_t x, uint8_t p){ 
    return (x>>p) & 1; // mesma logica do numero par só que deslocado
}      

/*Byte em p:
    Deslocar p 3 unidades para a esquerda resulta em múltiplos de 8 (2^3), podendo assumir os valores 0x0, 0x8, 0x10 e 0x18,
    dependendo do valor de p. Isso faz com que x seja deslocado para direita uma quantidade de vezes suficientes para que o byte 
    pdesejado seja o LSB. Então o número é passado pela máscara 255, que faz com que apenas o byte menos significativo seja
    mantido, e os outros ficam iguais a 0.
*/
int32_t byteEmP(int32_t x, uint8_t p){ 
    return (x >> (p << 3) ) & 255 ; // mesma logica do bit em p só que deslocando a cada 2^3 intervalos (para andar 8 bits/2byte)
}    


/* Seta byte em p:
    Primeiro, utilizando a lógica do item anterior, o byte 0xFF é deslocado para a esquerda de forma a ficar na posição desejada.
    Seus bits são invertidos para que quando for feita a operação & com x, o byte desejado seja transformado em 0x00 e o resto 
    do número continue igual.
    Depois o byte y é deslocado para a posição que foi zerada anteriormente, e com a operação | y é inserido no x sem alterar 
    o restante do número.
*/
int32_t setaByteEmP(int32_t x, int32_t y, uint8_t p){ 
    return ( ~( 255 << ( p<<3 ) ) & x ) | (y << ( p<<3 ) )  ; 
    // primeiro zeramos o byte na posicao do byte p (por meio da inversao de 1111 1111 [= 255] deslocado para a posição do byte
    // e depois fizemos AND do inverso de 255 com X que é o valor com byte a ser alterado, obtendo assim a posicao toda 0000 0000)
    // depois disso fazemos o OR do resultado anterior com Y (byte a ser inserido) deslocado para a posicao requisitada
    // obtendo a insercao de Y no lugar do byte desejado 
}


/*Mínimo:
    A lógica utilizada nessa solução é retornar y caso y<x ou retornar x caso x<y. Para isso foi utilizado o termo -(x < y), que possui dois casos:
        
         0 caso y<x, também resultando 0 para a operação ((x ^ y) & 0) , de forma que a operação restante seria y ^ 0, que tem o próprio y como resultado
        
        -1(0xFFFFFFFF) caso x<y, obtendo a operação ((x ^ y) & -1) que equivale à própria operação (x ^ y), já que -1 é um valor neutro da operação &, 
        dessa forma, junto da operação exterior é obtido y^(x^y), o que equivale a x, visto que y^y anula-se.
    
    Assim o resultado esperado é obtido.
*/
int32_t minimo(int32_t x, int32_t y){
    return y ^ ((x ^ y) & -(x < y)); // 
}      


/*Negação lógica:
    Exploramos o fato de que quando deslocamos um número positivo para a direita, o byte da esqueda se torna 0, e quando o número
    é negativo, o byte da esquerda se torna 1.
    E (~x + 1) é utilizado para diferenciar  os números positivos do 0, tendo em vista que o 0 com os bits invertidos é -1, e 
    após somar 1 volta a ser 0. Esse é o único caso em que o resultado de (~x + 1) em que um número não negativo tem o bit mais à
    esqueda igual a 0.

caso x > 0 :
      ( (~x + 1) >> 31)  obtemos 0xFFFFFFFF
      ( (x >> 31) | ((~x + 1) >> 31) )   obtido (0x00000000 | 0xFFFFFFFF) que retorna 0xFFFFFFFF 
      ( (x >> 31) | ((~x + 1) >> 31) ) + 1   como 0xFFFFFFFF é igual a -1, obtemos a operação -1 + 1 = 0 

caso x = 0 :
      ( (~x + 1) >> 31)  obtemos 0xFFFFFFFF
      ( (x >> 31) | ((~x + 1) >> 31) )   obtido (0x00000000 | 0x00000000) que retorna 0x00000000
      ( (x >> 31) | ((~x + 1) >> 31) ) + 1   ultimo bit a direita 1, valor decimal 1

caso x < 0 :
      ( (~x + 1) >> 31)  obtemos 0x00000000
      ( (x >> 31) | ((~x + 1) >> 31) )   obtido (0xFFFFFFFF | 0x00000000) que retorna 0xFFFFFFFF
      ( (x >> 31) | ((~x + 1) >> 31) ) + 1   como 0xFFFFFFFF é igual a -1, obtemos a operação -1 + 1 = 0 
*/
int32_t negacaoLogica(int32_t x){ 
    return ( (x >> 31) | ((~x + 1) >> 31) ) + 1; 
}



void teste(int32_t saida, int32_t esperado) {
    static uint8_t test_number = 0;
    test_number++;
    if(saida == esperado)
        printf(ANSI_COLOR_GREEN "PASSOU! Saída: %-10d\t Esperado: %-10d\n" ANSI_COLOR_RESET,
            saida, esperado);

    else
        printf(ANSI_COLOR_RED "%d: FALHOU! Saída: %-10d\t Esperado: %-10d\n" ANSI_COLOR_RESET,
            test_number, saida, esperado);
}

int main() {
    puts(ANSI_COLOR_BLUE "Primeiro lab - bits" ANSI_COLOR_RESET);
    puts("");

    puts("Teste: ehPar");
    teste(ehPar(2), 1);
    teste(ehPar(1), 0);
    teste(ehPar(3), 0);
    teste(ehPar(13), 0);
    teste(ehPar(100), 1);
    teste(ehPar(125), 0);
    teste(ehPar(1024), 1);
    teste(ehPar(2019), 0);
    teste(ehPar(2020), 1);
    teste(ehPar(-1), 0);
    teste(ehPar(-27), 0);
    teste(ehPar(-1073741825), 0);
    teste(ehPar(1073741824), 1);
    teste(ehPar(2147483647), 0);
    teste(ehPar(-2147483648), 1);
    teste(ehPar(0), 1);
    puts("");

    puts("Teste: mod8");
    teste(mod8(0), 0);
    teste(mod8(4), 4);
    teste(mod8(7), 7);
    teste(mod8(8), 0);
    teste(mod8(-1), 7);
    teste(mod8(-8), 0);
    teste(mod8(2147483647), 7);
    teste(mod8(-2147483648), 0);
    puts("");

    puts("Teste: negativo");
    teste(negativo(0), 0);
    teste(negativo(1), -1);
    teste(negativo(-1), 1);
    teste(negativo(2147483647), -2147483647);
    teste(negativo(-2147483647), 2147483647);
    teste(negativo(-2147483648), 2147483648);
    puts("");

    puts("Teste: bitwiseAnd");
    teste(bitwiseAnd(1, 3), 1);
    teste(bitwiseAnd(-1, 0), 0);
    teste(bitwiseAnd(-1, 0x7FFFFFFF), 0x7FFFFFFF);
    teste(bitwiseAnd(0b0100, 0b1100), 0b0100);
    puts("");

    puts("Teste: ehIgual");
    teste(ehIgual(1,1), 1);
    teste(ehIgual(1,0), 0);
    teste(ehIgual(0,1), 0);
    teste(ehIgual(-1,1), 0);
    teste(ehIgual(-1,-1), 1);
    teste(ehIgual(2147483647,-1), 0);
    teste(ehIgual(2147483647,-2147483647), 0);
    teste(ehIgual(2147483647,-2147483648), 0);
    teste(ehIgual(2147483647,-2147483648), 0);
    puts("");

    puts("Teste: limpaBitN");
    teste(limpaBitN(1,0), 0);
    teste(limpaBitN(0b1111,1), 0b1101);
    teste(limpaBitN(15,3), 7);
    teste(limpaBitN(-1,31), 2147483647);
    teste(limpaBitN(-1,0), -2);
    teste(limpaBitN(2147483647, 30), 1073741823);
    puts("");

    puts("Teste: bitEmP");
    teste(bitEmP(1, 0), 1);   //    b01 => retorna 1
    teste(bitEmP(1, 1), 0);   //    b01 => retorna 0
    teste(bitEmP(2, 0), 0);   //    b10 => retorna 0
    teste(bitEmP(2, 1), 1);   //    b10 => retorna 1
    teste(bitEmP(9, 2), 0);   //  b1001 => retorna 0
    teste(bitEmP(-4194305, 22), 0);
    teste(bitEmP(9, 3), 1);
    teste(bitEmP(16, 3), 0);
    teste(bitEmP(0x1 << 5, 4), 0);
    teste(bitEmP(0x1 << 31, 31), 1);
    teste(bitEmP(-1073741825, 30), 0);
    teste(bitEmP(-1073741825, 31), 1);
    puts("");

    puts("Teste: byteEmP");
    teste(byteEmP(0x766B, 1), 0x76);
    teste(byteEmP(0x766B, 0), 0x6B);
    teste(byteEmP(0x8420, 0), 0x20);
    teste(byteEmP(0x12345678, 3), 0x12);   // retorna 0x12
    teste(byteEmP(0x12345678, 2), 0x34);   // retorna 0x34
    teste(byteEmP(0x12345678, 1), 0x56);   // retorna 0x56
    teste(byteEmP(0x12345678, 0), 0x78);   // retorna 0x78
    teste(byteEmP(0x321, 1), 0x03);        // retorna 0x03
    teste(byteEmP(0x321, 0), 0x21);        // retorna 0x21
    puts("");

    puts("Teste: setaByteEmP");
    teste(setaByteEmP(0x00, 0xFF, 0), 0x000000FF);
    teste(setaByteEmP(0x00, 0xFF, 1), 0x0000FF00);
    teste(setaByteEmP(0x00, 0xFF, 2), 0x00FF0000);
    teste(setaByteEmP(0x00, 0xFF, 3), 0xFF000000);
    teste(setaByteEmP(0x01234567, 0x33, 2), 0x01334567);
    teste(setaByteEmP(0xdeadbeef, 0x00, 0), 0xdeadbe00);
    teste(setaByteEmP(0xdeadbeef, 0x00, 1), 0xdead00ef);
    puts("");

    puts("Teste: minimo");
    teste(minimo(0,1), 0);
    teste(minimo(0,10), 0);
    teste(minimo(1, 128), 1);
    teste(minimo(-1, 0), -1);
    teste(minimo(-1, -2), -2);
    teste(minimo(2147483647, 2147483646), 2147483646);
    teste(minimo(-2147483648, -2147483647), -2147483648);
    teste(minimo(-2147483648, -1), -2147483648);
    puts("");

    puts("Teste: negacaoLogica");
    teste(negacaoLogica(0), 1);
    teste(negacaoLogica(1), 0);
    teste(negacaoLogica(-1), 0);
    teste(negacaoLogica(64), 0);
    teste(negacaoLogica(-64), 0);
    teste(negacaoLogica(2147483647), 0);
    teste(negacaoLogica(-2147483648), 0);
    puts("");

}