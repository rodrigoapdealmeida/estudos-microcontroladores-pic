#line 1 "C:/Users/rodri/Documentos/rodrigo/estudos-microcontroladores-pic/Aula004/aula004.c"

void main() {
 ANSEL = 0x00;
 CMCON = 7;

 TRISIO0_bit = 1;
 TRISIO1_bit = 0;

 GPIO = 0;

 while(1)
 {
 if(GPIO.F0)
 {
 GPIO.F1 = 1;
 GPIO.F5 = 1;
 delay_ms(2000);
 }
 else
 {
 GPIO.F1 = 0;
 GPIO.F5 = 0;
 }
 }
}
