algoritmo "triangulos"
var
   l1, l2, l3: real
   equil, escal, isos, tri: logico
inicio
      escreva("digite o primeiro valor: ")
      leia(l1)
      escreva("digite o segundo valor: ")
      leia(l2)
      escreva("digite o terceiro valor: ")
      leia(l3)
      tri<- (l1<l2+l3) e (l2<l1+l3) e (l3<l1+l2)
      equil<- (l1=l2) e (l2=l3)
      escal<- ((l1<>l2) e (l2<>l3) e (l3<>l1)) e tri
      isos<- ((equil=falso) e (escal=falso)) e tri
      escreval("")
      se tri=verdadeiro entao
         escreval("pode formar um triangulo.")
      fimse
      se tri=falso entao
         escreval("não pode formar um triangulo.")
      fimse
      se equil=verdadeiro entao
         escreval("Esse triangulo será equilatero.")
      fimse
      se escal=verdadeiro entao
         escreval("Esse triangulo será escalavel.")
      fimse
      se (((escal=falso) e (equil=falso)) e tri=verdadeiro) entao
         escreva("Esse triangulo será isosceles.")
      fimse
      escreval("")
fimalgoritmo