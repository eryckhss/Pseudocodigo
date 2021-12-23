programa {
    inteiro cabelo, idade, hom18=0, mul25=0, fe=0, ma=0
    cadeia printsexo, printcab, sexo, resp
    
    funcao condicoes() {
        limpa()
        escreva("Qual o sexo do candidato? [m/f]\n")
        faca {
            leia(sexo)
            se (sexo == "M") {
                sexo = "m"
            }
            senao {
                se (sexo == "F") {
                    sexo = "f"
                }
            }
            se ((sexo != "m") e (sexo != "f")) {
               limpa()
               escreva ("Opção invalida\n")
               escreva ("Digite 'm' para masculino ou 'f' para feminino\n")
               escreva ("Qual o sexo do candidato? [m/f]\n")
            }
        }enquanto ((sexo != "m") e (sexo != "f"))
        se (sexo == "f") {
            printsexo = "feminino"
            fe = fe + 1
        }
        senao {
            se (sexo == "m") {
                printsexo = "masculino"
                ma = ma + 1
            }
        }
        limpa()
        escreva ("sexo selecionado: "+ printsexo+"\n")
        escreva ("-----------------------------\n")
        escreva ("Qual a idade do candidato?\n")
        faca {
            leia (idade)
            se ((idade < 1) ou (idade > 130)) {
                limpa()
                escreva ("sexo selecionado: "+ printsexo+"\n")
                escreva ("-----------------------------\n")
                escreva ("Opção inválida\n")
                escreva ("digite um numeral inteiro referente a idade\n")
                escreva ("entre 1 e 130 anos\n")
            }
        }enquanto ((idade < 1) ou (idade > 130))
        limpa()
        escreva ("sexo selecionado: "+ printsexo+"\n")
        escreva ("idade: "+ idade+"\n")
        escreva ("-----------------------------\n")
        faca {
            escreva ("cor do cabelo?\n")
            escreva ("[1] loiro\n")
            escreva ("[2] castanho\n")
            escreva ("[3] preto\n")
            escreva ("[4] careca\n")
            leia (cabelo)
            se ((cabelo != 1) e (cabelo != 2) e (cabelo != 3) e (cabelo != 4)) {
               limpa()
               escreva ("sexo selecionado: "+ printsexo+"\n")
               escreva ("idade: "+ idade+"\n")
               escreva ("-----------------------------\n")
               escreva ("Opção inválida\n")
               escreva ("Escolha entre 1 e 4 conforme as opções exibidas\n")
            }
        }enquanto ((cabelo != 1) e (cabelo != 2) e (cabelo != 3) e (cabelo != 4))
        escolha (cabelo) {
            caso 1:
                printcab = "loiros"
            pare
            caso 2:
                printcab = "castanhos"
            pare
            caso 3:
                printcab = "pretos"
            pare
            caso 4:
                printcab = "o candidato é careca!"
        }
        se ((sexo == "m") e (idade >= 18) e (cabelo == 2)) {
            hom18 = hom18 + 1
        }
        se ((sexo == "f") e (idade >= 25) e (idade <= 30) e (cabelo == 1)) {
            mul25 = mul25 + 1
        }
        limpa()
        escreva ("sexo selecionado: "+ printsexo+"\n")
        escreva ("idade: "+ idade+"\n")
        escreva ("cabelos: "+ printcab+"\n")
        escreva ("-----------------------------\n")
        escreva ("Deseja cadastrar mais um? [s/n]\n")
        faca {
            leia (resp)
            se ((resp == "n") ou (resp == "N")) {
                resp = "N"
            }
            senao {
                se ((resp != "S") e (resp != "s")) { 
                    limpa()
                    escreva ("você deve digitar 'S' para SIM ou 'N' para NÃO\n")
                    escreva ("Deseja cadastrar mais um? [s/n]\n")
                }
            }
        }enquanto ((resp != "N") e (resp != "s") e (resp != "S"))
    }
    funcao calccadastro() {
        limpa()
        se ((mul25 == 0) e (hom18 == 0)) {
            escreva ("Nenhum perfil se encaixou na seleção\n")
        }
        senao {
            se (mul25 == 0) {
                escreva ("Nenhuma mulher se encaixou na seleção\n")
                se (fe == 0) {
                    escreva("Pois nenhuma mulher foi cadastrada!\n")
                    escreva("\n")
                }
            }
            senao {
                se (hom18 == 0) {
                    escreva ("Nenhum homem se encaixou na seleção\n")
                    se (ma == 0) {
                        escreva("Pois nenhum homem foi cadastrado!\n")
                        escreva("\n")
                    }
                }
            }
        }
        se (fe > 0) {
            escreva("Foram cadastradas "+ fe+ " mulheres.\n")
            escreva("\n")
        }
        se (ma > 0) {
            escreva("Foram cadastrados "+ ma+ " homens.\n")
            escreva("\n")
        }
        
    }
    funcao inicio() {
        faca {
            condicoes()
        }enquanto (resp != "N")
        calccadastro()
        escreva ("o total de mulheres loiras com idade entre 25 e 30 anos é: "+ mul25+"\n")
        escreva ("o total de homens com mais de 18 anos e cabelos castanhos é: "+ hom18+"\n")
        escreva("\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3808; 
 * @DOBRAMENTO-CODIGO = [4, 108, 141];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */