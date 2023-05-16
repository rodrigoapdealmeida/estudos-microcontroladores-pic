
_main:

;Aula006.c,10 :: 		void main() {
;Aula006.c,11 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Aula006.c,12 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;Aula006.c,14 :: 		TRISIO0_bit = 1;   //Entrada digital.
	BSF        TRISIO0_bit+0, BitPos(TRISIO0_bit+0)
;Aula006.c,15 :: 		TRISIO1_bit = 1;   //Entrada digital.
	BSF        TRISIO1_bit+0, BitPos(TRISIO1_bit+0)
;Aula006.c,16 :: 		TRISIO4_bit = 0;   //Saída digital.
	BCF        TRISIO4_bit+0, BitPos(TRISIO4_bit+0)
;Aula006.c,17 :: 		TRISIO5_bit = 0;   //Saída digital.
	BCF        TRISIO5_bit+0, BitPos(TRISIO5_bit+0)
;Aula006.c,19 :: 		S1 = 1;     //Inicializa em nível alto.
	BSF        GPIO+0, 0
;Aula006.c,20 :: 		S2 = 1;     //Inicializa em nível alto.
	BSF        GPIO+0, 1
;Aula006.c,21 :: 		D1 = 0;     //Led current source.
	BCF        GPIO+0, 4
;Aula006.c,22 :: 		D2 = 0;     //Led current source, inicia em nível baixo.
	BCF        GPIO+0, 5
;Aula006.c,24 :: 		while(1)
L_main0:
;Aula006.c,26 :: 		if(S1 == 0)
	BTFSC      GPIO+0, 0
	GOTO       L_main2
;Aula006.c,28 :: 		D1 = ~D1;       //Estado inverso de D1.
	MOVLW      16
	XORWF      GPIO+0, 1
;Aula006.c,29 :: 		delay_ms(300);  //Delay para evitar ruidos(bouncing) no hardware.
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Aula006.c,30 :: 		}
L_main2:
;Aula006.c,31 :: 		if(S2 == 0)
	BTFSC      GPIO+0, 1
	GOTO       L_main4
;Aula006.c,33 :: 		D2 = ~D2;
	MOVLW      32
	XORWF      GPIO+0, 1
;Aula006.c,34 :: 		delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;Aula006.c,35 :: 		}
L_main4:
;Aula006.c,36 :: 		}
	GOTO       L_main0
;Aula006.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
