//Precisamos configurar os fuses, quando for utilizar os pinos dos cristais.
void main() {
     ANSEL = 0x00;      //Desliga as entradas AD e configura todos como digital.
     CMCON = 7;         //Desliga os comparadores.
     
     TRISIO0_bit = 1;
     TRISIO1_bit = 0;
     
     GPIO = 0;
     
     while(1)
     {
      if(GPIO.F0)  //Se verdadeiro
      {
       GPIO.F1 = 1;
       GPIO.F5 = 1;     //Pino GP5 do cristal, precisa ser configurado.
       delay_ms(2000);
      }
      else
      {
       GPIO.F1 = 0;
       GPIO.F5 = 0;
      }
     }
}