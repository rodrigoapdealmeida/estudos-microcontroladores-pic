int control = 0xFF;
void main() {
     TRISB = 0;         //Todos pinos configurados como s�ida digital.
     PORTB = 0xFF;      //Todos pinos em n�vel alto, pois LED e current sink.
     
     while(1)
     {

      PORTB = control;
      delay_ms(300);
      
      control = control <<1;
      if(control == 0) control = 0xFF;
     }
}