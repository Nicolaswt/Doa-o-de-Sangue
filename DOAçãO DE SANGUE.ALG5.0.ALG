Algoritmo "Doa��o de sangue"
tipo
   doador=registro
      nome:caractere
      idade:inteiro
      peso:real
      tipo_sanguineo:caractere
      fumante:caractere
   fimregistro

Var
   P:doador
   doadores:inteiro
   contador:inteiro
   continuar:inteiro
   incapaz: inteiro
   apto: inteiro

Inicio

   para doadores:= 1 ate 5 faca

      escreval("Bem vindo ao registro de doa��o de sangue.")
      escreval("Escreva seu nome:")
      leia(P.nome)
      escreval("Qual a sua idade?:")
      leia(P.idade)
      se (P.idade < 18) ou (P.idade > 69)entao
         escreval("Infelizmente voc� est� inapto para doa��o.")
         incapaz <- incapaz +1
      senao
         escreval("Qual o seu peso?:")
         leia(P.peso)
         se (P.peso <50)entao
            escreval("Infelizmente voc� n�o tem peso apropriado para doar.")
            incapaz <- incapaz +1
         senao
            escreval("Qual seu tipo sangu�neo?(Ex: A, B, AB, O):")
            leia(P.tipo_sanguineo)
            se (P.tipo_sanguineo = "A") ou (P.tipo_sanguineo = "B") ou (P.tipo_sanguineo = "AB") ou (P.tipo_sanguineo = "O") entao
               escreval("Tipo sangu�neo v�lido.")
            senao
               escreval("Tipo sangu�neo inv�lido! Por favor, insira A, B, AB ou O:")
               incapaz <- incapaz +1
            fimse
            escreval("Para prosseguir com a doa��o, digite 0.")
            leia(continuar)
            escreval("Voc� � fumante? 0 para SIM e 1 para N�O.")
            leia(P.fumante)
            se (P.fumante) = "0" entao
               escreval("Infelizmente voc� n�o pode ser fumante para fazer a doa��o.")
               incapaz <- incapaz +1
            senao
               escreval("Para prosseguir com a doa��o, digite 0.")
               leia(continuar)
               escreval("Nome:", P.nome)
               escreval("Idade:", P.idade)
               escreval("Peso (kg):", P.peso)
               escreval("Tipo sangu�neo:", P.tipo_sanguineo)
               escreval("Fumante:", P.fumante)
               escreval("PARAB�NS!Voc� est� apto para doa��o.")
               contador <- contador +1
               apto <- apto +1
            fimse
         fimse
      fimse
   fimpara
   escreval("Resultado:",doadores,"pessoas fizeram o registro. ")
   escreval("sendo:",incapaz, "incapazes para a doa��o e")
   escreval(apto, "aptos para doa��o.")
Fimalgoritmo