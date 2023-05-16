#line 1 "C:/Users/rodri/Documentos/rodrigo/estudos-microcontroladores-pic/Aula002/aula002.c"
void main() {

 TRISB = 0b00000000;
 PORTB = 0b00000000;

 while(1)
 {
 PORTB++;
 delay_ms(1000);
 }
}
