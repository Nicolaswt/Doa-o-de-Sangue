Algoritmo "Doação de sangue"
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

      escreval("Bem vindo ao registro de doação de sangue.")
      escreval("Escreva seu nome:")
      leia(P.nome)
      escreval("Qual a sua idade?:")
      leia(P.idade)
      se (P.idade < 18) ou (P.idade > 69)entao
         escreval("Infelizmente você está inapto para doação.")
         incapaz <- incapaz +1
      senao
         escreval("Qual o seu peso?:")
         leia(P.peso)
         se (P.peso <50)entao
            escreval("Infelizmente você não tem peso apropriado para doar.")
            incapaz <- incapaz +1
         senao
            escreval("Qual seu tipo sanguíneo?(Ex: A, B, AB, O):")
            leia(P.tipo_sanguineo)
            se (P.tipo_sanguineo = "A") ou (P.tipo_sanguineo = "B") ou (P.tipo_sanguineo = "AB") ou (P.tipo_sanguineo = "O") entao
               escreval("Tipo sanguíneo válido.")
            senao
               escreval("Tipo sanguíneo inválido! Por favor, insira A, B, AB ou O:")
               incapaz <- incapaz +1
            fimse
            escreval("Para prosseguir com a doação, digite 0.")
            leia(continuar)
            escreval("Você é fumante? 0 para SIM e 1 para NÃO.")
            leia(P.fumante)
            se (P.fumante) = "0" entao
               escreval("Infelizmente você não pode ser fumante para fazer a doação.")
               incapaz <- incapaz +1
            senao
               escreval("Para prosseguir com a doação, digite 0.")
               leia(continuar)
               escreval("Nome:", P.nome)
               escreval("Idade:", P.idade)
               escreval("Peso (kg):", P.peso)
               escreval("Tipo sanguíneo:", P.tipo_sanguineo)
               escreval("Fumante:", P.fumante)
               escreval("PARABÉNS!Você está apto para doação.")
               contador <- contador +1
               apto <- apto +1
            fimse
         fimse
      fimse
   fimpara
   escreval("Resultado:",doadores,"pessoas fizeram o registro. ")
   escreval("sendo:",incapaz, "incapazes para a doação e")
   escreval(apto, "aptos para doação.")
Fimalgoritmo