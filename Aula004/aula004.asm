
_main:

;aula004.c,2 :: 		void main() {
;aula004.c,3 :: 		ANSEL = 0x00;      //Desliga as entradas AD e configura todos como digital.
	CLRF       ANSEL+0
;aula004.c,4 :: 		CMCON = 7;         //Desliga os comparadores.
	MOVLW      7
	MOVWF      CMCON+0
;aula004.c,6 :: 		TRISIO0_bit = 1;
	BSF        TRISIO0_bit+0, BitPos(TRISIO0_bit+0)
;aula004.c,7 :: 		TRISIO1_bit = 0;
	BCF        TRISIO1_bit+0, BitPos(TRISIO1_bit+0)
;aula004.c,9 :: 		GPIO = 0;
	CLRF       GPIO+0
;aula004.c,11 :: 		while(1)
L_main0:
;aula004.c,13 :: 		if(GPIO.F0)  //Se verdadeiro
	BTFSS      GPIO+0, 0
	GOTO       L_main2
;aula004.c,15 :: 		GPIO.F1 = 1;
	BSF        GPIO+0, 1
;aula004.c,16 :: 		GPIO.F5 = 1;     //Pino GP5 do cristal, precisa ser configurado.
	BSF        GPIO+0, 5
;aula004.c,17 :: 		delay_ms(2000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;aula004.c,18 :: 		}
	GOTO       L_main4
L_main2:
;aula004.c,21 :: 		GPIO.F1 = 0;
	BCF        GPIO+0, 1
;aula004.c,22 :: 		GPIO.F5 = 0;
	BCF        GPIO+0, 5
;aula004.c,23 :: 		}
L_main4:
;aula004.c,24 :: 		}
	GOTO       L_main0
;aula004.c,25 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
