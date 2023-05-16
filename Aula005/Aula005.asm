
_main:

;Aula005.c,1 :: 		void main() {
;Aula005.c,2 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Aula005.c,3 :: 		CMCON = 7;
	MOVLW      7
	MOVWF      CMCON+0
;Aula005.c,5 :: 		TRISIO0_bit = 0;
	BCF        TRISIO0_bit+0, BitPos(TRISIO0_bit+0)
;Aula005.c,6 :: 		TRISIO1_bit = 0;
	BCF        TRISIO1_bit+0, BitPos(TRISIO1_bit+0)
;Aula005.c,8 :: 		while(1)
L_main0:
;Aula005.c,10 :: 		GPIO.F0 = 1;
	BSF        GPIO+0, 0
;Aula005.c,11 :: 		delay_ms(10);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
	NOP
;Aula005.c,12 :: 		GPIO.F0 = 0;
	BCF        GPIO+0, 0
;Aula005.c,13 :: 		delay_ms(10);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
	NOP
;Aula005.c,15 :: 		GPIO.F1 = 1;
	BSF        GPIO+0, 1
;Aula005.c,16 :: 		delay_ms(1);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      48
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	NOP
;Aula005.c,17 :: 		GPIO.F1 = 0;
	BCF        GPIO+0, 1
;Aula005.c,18 :: 		delay_ms(1);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      48
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
;Aula005.c,20 :: 		}
	GOTO       L_main0
;Aula005.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
