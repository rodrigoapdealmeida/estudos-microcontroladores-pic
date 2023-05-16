#line 1 "C:/Users/rodri/Documentos/rodrigo/estudos-microcontroladores-pic/Aula004/Aula006.c"









void main() {
 ANSEL = 0;
 CMCON = 7;

 TRISIO0_bit = 1;
 TRISIO1_bit = 1;
 TRISIO4_bit = 0;
 TRISIO5_bit = 0;

  GPIO.F0  = 1;
  GPIO.F1  = 1;
  GPIO.F4  = 0;
  GPIO.F5  = 0;

 while(1)
 {
 if( GPIO.F0  == 0)
 {
  GPIO.F4  = ~ GPIO.F4 ;
 delay_ms(300);
 }
 if( GPIO.F1  == 0)
 {
  GPIO.F5  = ~ GPIO.F5 ;
 delay_ms(300);
 }
 }
}
