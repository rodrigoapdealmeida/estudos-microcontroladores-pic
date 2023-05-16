
// --- Mapeamento do hardware ---
#define S1 GPIO.F0
#define S2 GPIO.F1
#define D1 GPIO.F4
#define D2 GPIO.F5

// ------------------------------
// --- Função principal ---
void main() {
     ANSEL = 0;
     CMCON = 7;

     TRISIO0_bit = 1;   //Entrada digital.
     TRISIO1_bit = 1;   //Entrada digital.
     TRISIO4_bit = 0;   //Saída digital.
     TRISIO5_bit = 0;   //Saída digital.

     S1 = 1;     //Inicializa em nível alto.
     S2 = 1;     //Inicializa em nível alto.
     D1 = 0;     //Led current source.
     D2 = 0;     //Led current source, inicia em nível baixo.

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