//Polling em processadores � um problema, por conta do delay.
void main() {
     ANSEL = 0;
     CMCON = 7;
     
     TRISIO0_bit = 0;
     TRISIO1_bit = 0;
     
     while(1)
     {
      GPIO.F0 = 1;
      delay_ms(10);
      GPIO.F0 = 0;
      delay_ms(10);
      
      GPIO.F1 = 1;
      delay_ms(1);
      GPIO.F1 = 0;
      delay_ms(1);
      
     }
}