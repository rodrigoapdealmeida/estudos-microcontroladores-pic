
_main:

;aula002.c,1 :: 		void main() {
;aula002.c,3 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;aula002.c,4 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;aula002.c,6 :: 		while(1)
L_main0:
;aula002.c,8 :: 		PORTB++;
	INCF       PORTB+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;aula002.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;aula002.c,10 :: 		}
	GOTO       L_main0
;aula002.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
