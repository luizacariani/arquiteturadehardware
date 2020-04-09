; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e faça cada uma delas alternarem de estado dentro de um loop infinito;






;  /===============================================================================\
; | Projeto: TP-06														         	|	
; |																					|
; | Autor: Luiza Cariani Araujo													    |
; | Idioma: Assemble e AVRASM2.exe			                                        |
; | Solução: NOME DA SUA SOLUÇÃO ATMEL STUDIO 7 (Template neste exemplo)			|
; |																					|
; | Projetos: AssemblerTargetTeamplate												|
; |																					|
; | Para compilar: coloque no Git bash e inicie o compilador AVRASM2.exe            |
; |																					|
; |Exemplo: Para compilar este código, deverá ter o compilador AVRASM2.exe (windows)|
; | no prompt de comando (MS-DOS):													|
; |																					|
; |      avrasm2.exe -fI -o "Teamplate.hex"											|
; |						 -m "Teamplate.map"											|
; | 					 -l "Teamplate.lss"											|	
; |						 -e "Teamplate.eep"											|  
; |						 -S "Teamplate.tmp"											|	  
; |						 -W+ie  -d "Debug\Teamplate.obj"							|
; |						 main.asm													|
; |																					|
; | Software: Visual Studio			                                                |
; |																					|
; |															                     	|
; |																					|
; + --------------------------------------------------------------------------------+
; |																					|
; | 	                                                                            |
; |																					|
; |  							                                                    |
; |																					|
; |  							                                                	|
; |																					|
; |                                                                             	|
; |																					|
; |  		                                                                    	|
; |                                                                     			|
; |																					|
;  \===============================================================================/


.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das variáveis   
.device		atmega328P
.nolist
.list

;============
;Declarações:

.ORG 0x0000              ; instrução inicial, é onde se inicia a memória de programa
    rjmp INICIO 
         ;***coloque suas variáveis e declarações aqui***   

ldi r24, 0x3F ; 
out 0x04, r24 ; 
INICIO:
      ;
       LOOP:
    in r24, 0x05 ;
      andi r24, 0xD9 ;
      out 0x05, r24 ;
      rjmp LOOP
   
      ;***seus procedimentos de atuação finitas vão aqui aqui o  programa vai finalizar no final***
.EXIT 