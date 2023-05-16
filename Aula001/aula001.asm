
_main:

;aula001.c,6 :: 		void main() {
;aula001.c,7 :: 		TRISB = 0b00000000;        //Todos os pinos do portb como saída digital.
	CLRF       TRISB+0
;aula001.c,8 :: 		PORTB = 0b00000000;        //Inicializa todos os pinos como nível baixo.
	CLRF       PORTB+0
;aula001.c,11 :: 		while(1)
L_main0:
;aula001.c,13 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;aula001.c,14 :: 		delay_ms(1000);           //Delay em milisegundos
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;aula001.c,15 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;aula001.c,16 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;aula001.c,17 :: 		} //Fim do loop
	GOTO       L_main0
;aula001.c,18 :: 		} //Fim da função main()
L_end_main:
	GOTO       $+0
; end of _main
