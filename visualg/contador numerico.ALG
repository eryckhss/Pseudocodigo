algoritmo "contador"
var
   vi, vf, mt: real
inicio
      Escreva("Valor inicial: ")
      Leia(vi)
      Escreva("Valor final: ")
      Leia(vf)
      se vi = vf entao
         escreval(vi, " e", vf, " são valores iguais, tente com valores diferentes.")
         fimalgoritmo
      fimse
      Escreva("Multiplicador de contagem: ")
      Leia(mt)
      Se (vi < vf) entao
         Enquanto (vi <= vf) faca
                  Escreva(vi:4:2, " | ")
                  vi <- vi + abs(mt)
         FimEnquanto
      Senao
           se (vi > vf) entao
              Enquanto (vi >= vf) faca
                       Escreva(vi:4:2, " | ")
                       vi <- vi - abs(mt)
              FimEnquanto
           fimse
      FimSe
fimalgoritmo
