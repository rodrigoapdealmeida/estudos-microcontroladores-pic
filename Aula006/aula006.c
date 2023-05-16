
// --- Mapeamento do hardware ---
#define S1 GPIO.F0
#define S2 GPIO.F1
#define D1 GPIO.F4
#define D2 GPIO.F5

// ------------------------------
// --- Fun��o principal ---
void main() {
     ANSEL = 0;
     CMCON = 7;

     TRISIO0_bit = 1;   //Entrada digital.
     TRISIO1_bit = 1;   //Entrada digital.
     TRISIO4_bit = 0;   //Sa�da digital.
     TRISIO5_bit = 0;   //Sa�da digital.

     S1 = 1;     //Inicializa em n�vel alto.
     S2 = 1;     //Inicializa em n�vel alto.
     D1 = 0;     //Led current source.
     D2 = 0;     //Led current source, inicia em n�vel baixo.

     while(1)
     {
      if(S1 == 0)
      {
       D1 = ~D1;       //Estado inverso de D1.
       delay_ms(300);  //Delay para evitar ruidos(bouncing) no hardware.
      }
      if(S2 == 0)
      {
       D2 = ~D2;
       delay_ms(300);
      }
     }
}