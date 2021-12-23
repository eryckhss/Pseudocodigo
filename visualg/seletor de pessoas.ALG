algoritmo "cadastro-candidato"                       // computa homens maiores de 18 anos
var                                                  // de cabelos castanhos
   cabelo, idade, hom18, mul25: inteiro
   sexo, resp, printsexo, printcab : caractere       // e mulheres entre 25 e 30 anos
inicio                                               // de cabelos loiros
   repita
      limpatela
      escreval("Qual o sexo do candidato? [m/f]")
      leia(sexo)
      se (sexo = "M") entao //na linha 24 há uma redundancia [1] para corrigir dentro da função 'repita'. [corrigido no arquivo de mesmo nome para portugol studio]
         sexo <- "m"
      senao
           se (sexo = "F") entao
              sexo <- "f"
           fimse
      fimse
      se (sexo <> "m") e (sexo <> "f") entao
         repita
               limpatela
               escreval("Opção invalida")
               escreval("Digite 'm' para masculino ou 'f' para feminino")
               escreval("Qual o sexo do candidato? [m/f]")
               leia(sexo)
               se (sexo = "M") entao // redundancia [1] para corrigir, [em caso de 'opção invalida' está sendo necessário reescrever a estrutura condicional para sexo masculino ou feminino]
                  sexo <- "m"
               senao
                    se (sexo = "F") entao
                       sexo <- "f"
                    fimse
               fimse
         ate (sexo = "m") ou (sexo = "f")
      fimse
      se (sexo = "f") entao
         printsexo <- "feminino"
      senao
           se (sexo = "m") entao
              printsexo <- "masculino"
           fimse
      fimse
      limpatela
      escreval("sexo selecionado: ", printsexo)
      escreval("-----------------------------")
      escreval("qual idade?")
      leia(idade)
      se (idade < 1) ou (idade > 130) entao
         repita
               limpatela
               escreval("sexo selecionado: ", printsexo)
               escreval("-----------------------------")
               escreval("Opção inválida")
               escreval("digite um numeral inteiro referente a idade")
               escreval("entre 1 e 130 anos")
               leia(idade)
           ate (idade >= 1) e (idade <= 130)
      fimse
      limpatela
      escreval("sexo selecionado: ", printsexo)
      escreval("idade: ", idade)
      escreval("-----------------------------")
      escreval("cor do cabelo?")
      escreval("[1] loiro")
      escrevaL("[2] castanho")
      escreval("[3] preto")
      escreval("[4] careca")
      leia(cabelo)
      se (cabelo <> 1) e (cabelo <> 2) e (cabelo <> 3) e (cabelo <> 4) entao
         repita
               limpatela
               escreval("sexo selecionado: ", printsexo)
               escreval("idade: ", idade)
               escreval("-----------------------------")
               escreval("Opção inválida")
               escreval("Escolha entre 1 e 4 conforme as opções exibidas")
               escreval("cor do cabelo?")
               escreval("[1]loiro")
               escrevaL("[2]castanho")
               escreval("[3]preto")
               escreval("[4]careca")
               leia(cabelo)
         ate (cabelo = 1) ou (cabelo = 2) ou (cabelo = 3) ou (cabelo = 4)
      fimse
      escolha cabelo
              caso 1
                   printcab <- "loiros"
              caso 2
                   printcab <- "castanhos"
              caso 3
                   printcab <- "pretos"
              caso 4
                   printcab <- "o candidato é careca!"
      fimescolha
      se (sexo = "m") e (idade >= 18) e (cabelo = 2) entao
         hom18 <- hom18 + 1
      fimse
      se (sexo = "f") e (idade >= 25) e (idade <= 30) e (cabelo = 1) entao
         mul25 <- mul25 + 1
      fimse
      limpatela
      escreval("sexo selecionado: ", printsexo)
      escreval("idade: ", idade)
      escreval("cabelos: ", printcab)
      escreval("-----------------------------")
      escrevaL("Deseja cadastrar mais um? [s/n]")
      leia(resp)
      se (resp = "n") ou (resp ="N") entao //na linha 114 há uma redundancia [2] para corrigir dentro da função 'repita'. [mesma situção, também corrigido no arquivo de mesmo nome para portugol studio]
         resp <- "N"
      senao
           se (resp <>"S") e (resp <>"s") entao
              repita
                    limpatela
                    escreval("você deve digitar 'S' para SIM ou 'N' para NÃO")
                    escrevaL("Deseja cadastrar mais um? [s/n]")
                    leia (resp)
                    se (resp = "n") ou (resp ="N") entao // redundancia [2] para corrigir [já corrigido, (ver linha 10)]
                       resp <- "N"
                    fimse
              ate (resp = "N") ou (resp = "s") ou (resp = "S")
           fimse
      fimse
   ate resp = "N"
   limpatela
   se (mul25 = 0) e (hom18 = 0) entao
      escreval("nenhum perfil se encaixou na seleção")
   senao
        se (mul25 = 0) entao
           escreval("nenhuma mulher se encaixou na seleção")
        senao
             se (hom18 = 0) entao
                escreval("nenhum homem se encaixou na seleção")
             fimse
        fimse
   fimse
   escreval("o total de mulheres loiras com idade entre 25 e 30 anos é: ", mul25)
   escreval("o total de homens com mais de 18 anos e cabelos castanhos é: ", hom18)
fimalgoritmo
