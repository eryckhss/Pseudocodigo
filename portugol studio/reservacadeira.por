programa {
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> tp
	cadeia B[10], cad
	inteiro i
	caracter r
	logico tst, tst2

	funcao mostrafileira () {
		inteiro j
		para (j=0;j<10;j++) {
			se (B[j] == "") {
				escreva ("[ B"+(j+1)+ " ]")
			} senao {
				escreva ("[ -- ]")
			}
		}
		escreva ("\n-------------------------------------------------------------\n")
	}
	
	funcao erro () {
		escreva ("Erro: Você deve escolher apenas entre as cadeiras disponiveis acima!\nTente outro lugar: ")
	}

	funcao inicio () {
		faca {
			limpa ()
			mostrafileira ()
			escreva ("Reservar a cadeira: ")
			faca {
			tst=falso, tst2 = verdadeiro
			leia (cad)
			se (tx.numero_caracteres(cad) == 3) {
				i = tp.cadeia_para_inteiro(tx.extrair_subtexto(cad, 1, 3),10)
				se (i > 10) {
					erro ()
				}
			} senao {
				se (tx.numero_caracteres(cad) == 2) {
					se (cad == "10") {
						i = tp.cadeia_para_inteiro(cad, 10)
					} senao {
						tst = tp.cadeia_e_inteiro(tx.extrair_subtexto(cad, 0, 1),10)
						se (tst == verdadeiro) {
							limpa ()
							mostrafileira ()
							erro ()
							
						} senao {
						i = tp.cadeia_para_inteiro(tx.extrair_subtexto(cad, 1, 2),10)
						}
					}
				} senao {
					se (tx.numero_caracteres(cad) == 1) {
						tst2 = tp.cadeia_e_inteiro(tx.extrair_subtexto(cad, 0, 1),10)
						se (tst2 == falso) {
							limpa ()
							mostrafileira ()
							erro ()
						} senao {
							i = tp.cadeia_para_inteiro(tx.extrair_subtexto(cad, 0, 1),10)
						}
					} senao {
						limpa ()
						mostrafileira ()
						erro ()
					}
				}
			}
			} enquanto ((i>10) ou ((tst == verdadeiro) e (cad != "10")) ou (tst2 == falso))
			se (B[(i-1)] == "") {
				B[(i-1)] = "X"
				escreva ("Cadeira B"+ i +" reservada!\n")
			} senao {
				escreva ("ERRO: Lugar ocupado!\n")
			}
			escreva ("Quer reservar outra cadeira? [S/N]")
			leia (r)
		} enquanto (r != 'N')
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */