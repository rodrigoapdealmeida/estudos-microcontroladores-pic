#line 1 "C:/Users/rodri/Documentos/rodrigo/estudos-microcontroladores-pic/introdução-pic16f84A/aula001.c"
#line 6 "C:/Users/rodri/Documentos/rodrigo/estudos-microcontroladores-pic/introdução-pic16f84A/aula001.c"
void main() {
 TRISB = 0b00000000;
 PORTB = 0b00000000;


 while(1)
 {
 RB1_bit = 1;
 delay_ms(1000);
 RB1_bit = 0;
 delay_ms(1000);
 }
}
