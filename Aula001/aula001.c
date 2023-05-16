/* Primeiro programa - Aula001
   HELLO-WORLD em C
*/

   //Setup
void main() {
     TRISB = 0b00000000;        //Todos os pinos do portb como saída digital.
     PORTB = 0b00000000;        //Inicializa todos os pinos como nível baixo.
     
     //Loop infinito
     while(1) 
     {
      RB1_bit = 1;
      delay_ms(1000);           //Delay em milisegundos
      RB1_bit = 0;
      delay_ms(1000);
     } //Fim do loop
} //Fim da função main()