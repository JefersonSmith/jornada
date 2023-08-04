Algoritmo "Jornada"
//Desenvolvido por Jeferson Smith
//RECODE PRO 2023 - Professor: Flavio Mota

//Cadastro de Funções

funcao apagar_passageiros(): caractere

var
   opcao4: caractere

inicio


   escreval("Você realmente quer apagar os passageiros? ")
   ESCREVAL("Esta modificação é irreversível! [s] ou [n]: ")
   leia(opcao4)
   se opcao4 = "s" entao
      para i de 1 ate limite faca
         nome[i] <- ""
         cpf[i] <- ""
         telefone[i] <- ""
         email[i] <- ""
         endereco[i] <- ""
         cadastrados <- 0
      fimpara
      escreval (" ------------------------------------------------")
      escreval (" TODOS OS PASSAGEIROS FORAM APAGADOS DO SISTEMA! ")
      escreval (" ------------------------------------------------")
   fimse

fimfuncao

funcao apagar_destinos(): caractere

var
   opcao5: caractere

inicio


   escreval("Você realmente quer apagar os passageiros? ")
   ESCREVAL("Esta modificação é irreversível! [s] ou [n]: ")
   leia(opcao5)
   se opcao5 = "s" entao
      para i de 1 ate limite faca
         pais[i] <- ""
         cidade[i] <- ""
         valor[i] <- 0

      fimpara
      escreval (" ------------------------------------------------")
      escreval (" TODOS OS DESTINOS FORAM APAGADOS DO SISTEMA!")
      escreval (" ------------------------------------------------")
   fimse

fimfuncao

funcao cadastro_passageiro(): caractere

Var

   nome, cpf, telefone, email, endereco:caractere

Inicio

   para i de 1 ate limite faca

      se nome[i]="" entao
         escreva ("Digite o Nome: ")
         leia (nome[i])
         nome<- nome[i]

         escreva ("Digite o CPF: ")
         leia (cpf[i])
         cpf<- cpf[i]

         escreva ("Digite o telefone: ")
         leia (telefone[i])
         telefone<- telefone[i]


         escreva ("Digite o E-mail: ")
         leia (email[i])
         email<- email[i]

         escreva ("Digite o endereço: ")
         leia (endereco[i])
         endereco<- endereco[i]

         escreval("Passageiro cadastrado com sucesso!")
         cadastrados <- cadastrados + 1


         escreval("Deseja cadastrar outro passageiro? [S] Sim ou  [N] Não: ")
         leia (opcao2)

         limpatela

         se (opcao2 <> "s") entao
            interrompa
         fimse
      fimse
   fimpara
   escreval (" -----------------------------------------------------")
   escreval ("     CASO O LIMITE DE CADASTROS TENHA EXCEDIDO")
   escreval ("VOCÊ PODE APAGAR OS PASSAGEIROS NO MENU CONFIGURAÇÕES!")
   escreval ("PASSAGEIROS CADASTRADOS:", cadastrados," /",limite)
   escreval (" -----------------------------------------------------")
fimfuncao

funcao cadastro_destino(): caractere

var
   cidade,pais: caractere
   valor: real

Inicio

   para i de 1 ate limite faca
      escreva ("Digite o País: ")
      leia (pais[i])
      pais<- pais[i]

      escreva ("Digite a Cidade: ")
      leia (cidade[i])
      cidade<- cidade[i]

      escreva ("Digite o valor: ")
      leia (valor[i])
      valor<- valor[i]

      escreval(" Destino cadastrado")
      escreval()
      escreval("Cadastrar novo destino? [S] Sim ou  [N] Não")
      leia (opcao2)

      limpatela

      se (opcao2 <> "s") entao
         interrompa
      senao
      fimse
   fimpara

fimfuncao

procedimento consulta_passageiro()
inicio

   para i de 1 ate limite faca

      escreval("Nome:", nome[i])
      escreval("CPF:", cpf[i])
      escreval("Telefone:", telefone[i])
      escreval("E-mail:", email[i])
      escreval("Endereço:", endereco[i])

      escreval("")

   fimpara
fimprocedimento

procedimento consulta_destino()
inicio


   para i de 1 ate limite faca

      escreval("Pacote de Viagens",i)
      escreval("País: ",pais[i])
      escreval("Cidade: ",cidade[i])
      escreval("Valor: R$",valor[i])
      escreval()
   fimpara
fimprocedimento

//Menu Inicial
const
   limite = 3
   total = 0

var

   i,j, cadastrados: inteiro
   opcao, opcao2, opcao3: caractere
   pais, cidade, cpf, nome, telefone ,email, endereco: vetor[1..limite] de caractere
   valor: vetor[1..limite] de real
   cadastro_passageiro, cadastro_destino: caractere
   apagar_passageiros, apagar_destinos: caractere


inicio

   opcao2<- "s"
   enquanto (opcao2 = "s") ou (opcao2 = "S") faca

      escreval()

      escreval("       _                            _")
      escreval("      | |                          | | ")
      escreval("      | | ___  _ __ _ __   __ _  __| | __ _")
      escreval("  _   | |/ _ \| '__| '_ \ / _` |/ _` |/ _` |")
      escreval(" | |__| | (_) | |  | | | | (_| | (_| | (_| |")
      escreval("  \____/ \___/|_|  |_| |_|\__,_|\__,_|\__,_|")
      escreval("")
      escreval("=-= A MELHOR AGÊNCIA DE VIAGENS DO BRASIL =-=")

      escreval()
      escreval("[1] - Cadastrar passageiro")
      escreval("[2] - Cadastrar destino")
      escreval("[3] - Consultar passageiro")
      escreval("[4] - Consultar destino")
      escreval("[5] - Configurações")
      escreval("[6] - Sair ")

      escreval()
      escreval("Sistema desenvolvido por Jeferson Smith - Recode Pro 2023")
      escreval()
      escreval("Digite a sua opção:")
      leia(opcao)

      escolha opcao
         limpatela

      caso "1"
         limpatela
         escreval("=-=-=-=-=-=-= CADASTRO PASSAGEIRO =-=-=-=-=-=-=")
         escreval("")
         cadastro_passageiro <- cadastro_passageiro()

      caso "2"
         limpatela
         escreval("=-=-=-=-=-=-= CADASTRO DESTINO =-=-=-=-=-=-=")
         escreval("")
         cadastro_destino <- cadastro_destino()

      caso "3"
         limpatela
         escreval("=-=-=-=-=-=-= CONSULTA PASSAGEIROS =-=-=-=-=-=-=")
         escreval ("")
         consulta_passageiro()

      caso "4"
         limpatela
         escreval("=-=-=-=-=-=-= CONSULTA DESTINOS =-=-=-=-=-=-=")
         escreval ("")
         consulta_destino()

      caso "5"
         limpatela
         escreval("=-=-=-=-=-=-= CONFIGURAÇÕES =-=-=-=-=-=-=")
         escreval ("")
         escreval("[1] - Apagador todos passageiros cadastrados")
         escreval("[2] - Apagador todos destinos cadastrados")
         escreval("[3] - Sair")
         ESCREVAL("")
         escreval("Escolha o menu desejado:")
         leia(opcao3)
         escolha opcao3

         caso "1"
            apagar_passageiros <- apagar_passageiros()
         caso "2"
            apagar_destinos <- apagar_destinos()
         caso "3"
            escreval("Você esta saindo das configurações")
            escreval("")
         fimescolha

      caso "6"
         escreval("Muito obrigado por utilizar nosso sistema!")
         interrompa


      outrocaso
         escreval("Opção inválida, digite um número de 1 a 6")
         escreval("")

      fimescolha

      escreval("Voltar ao menu principal? [S] ou [N]: ")
      leia (opcao2)

      limpatela
   fimenquanto

fimalgoritmo