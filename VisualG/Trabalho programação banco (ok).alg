algoritmo "INFOR BANK"
// Fun��o :Caixa Bancario
// Autor :Ulisses Alves, Ewerton Silveira, Gabriel Mathias, Luiz Guilherme, Lauro Chagas, Francisco Kelton, Wenderson Oliveira,Chardson Kroos.
// Data : 04/10/2017
// Se��o de Declara��es {Para O melhor tecnico Ever!}
var                      /
l1:caractere
s1:caractere
l2:caractere
s2:caractere
saldo, valor: real
op,parada: caracter
ext1: vetor [1..100] de caracter
ext2, ext3: vetor [1..100] de real
i,j: inteiro
banco:caractere
Titular1:caractere
num:inteiro
cpf1:real
cpf2:real
nome:caractere
nconta:caractere
nconta2:caractere
P:caractere

inicio
// Se��o de Comandos
escreval("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
escreval("            Ol� Usuario(a)! Sou Katarina a suporte do INFORBANKS.")
escreval("                  Deseja efetuar seu cadastro? Sim ou Claro?")
escreval("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
leia(P)
se(P="Sim") ou (P="Claro") entao
escreval("Ok friend ;). Pressione enter para come�ar")
senao
ESCREval("Tudo bem bb. Quem sabe da pr�xima :(")
fimalgoritmo
fimse
limpatela
escreval("----------------------------------------------------------------------------------")
escreval("[                                 Bem vindo!!                                    ]")
escreval("----------------------------------------------------------------------------------")
escreval
escreval("Insira Nome, Cpf, N� da conta e uma senha para efetuar cadastro:")
escreval("informe o nome do usu�rio:")
leia(l1)
escreval("informe o cpf do usu�rio:")
leia(cpf1)
escreval("informe senha para cadastro:")
leia(s1)
escreval("informe um n� para sua conta:")
leia(nconta)
escreval("confirme nome do usu�rio:")
leia(l2)
escreval("confirme cpf do usu�rio:")
leia(cpf2)
escreval("confirme sua senha:")
leia(s2)
escreval("confirme o n� de sua conta:")
leia(nconta2)
enquanto (l1<>l2) faca
escreval("login incorreto, digite novamente:")
leia(l2)
fimenquanto
enquanto (cpf1<>cpf2) faca
escreval("CPF incorreto, digite novamente:")
leia(cpf2)
fimenquanto
enquanto (s1<>s2) faca
escreval("senha incorreta, digite novamente:")
leia(s2)
fimenquanto
enquanto (nconta<>nconta2) faca
escreval("n� da conta est� incorreto, digite novamente:")
leia(nconta2)
fimenquanto
escreval("login realizado com sucesso.")
nome<-l1
j <- 1
saldo <- 0
// Gravar mensagem de extrato
ext1[j] <- "Saldo inicial de "
ext2[j] <- saldo
ext3[j] <- saldo
j <- j + 1
// Final
repita
limpatela
escreval("==================================================================================")
escreval("========================  Bem Vindo Ao Inforbanks ",l1,"!=======================================")
escreval("==================================================================================")
escreval("                         Usuario:" ,l1,)
escreval("                         SEU SALDO � DE: ", saldo)
escreval("                         N� DA CONTA:", nconta)
escreval
escreval("                          ----------------------------")
escreval("                          | 1 - Saque                |")
escreval("                          | 2 - Deposito             |")
escreval("                          | 3 - Transfer�ncia        |")
escreval("                          | 4 - Imprimir Extrato     |")
escreval("                          | 9 - SAIR                 |")
escreval("                          ----------------------------")
ESCREVAL
escreval("                        POR FAVOR DIGITE UMA DAS OP��ES!")
leia(op)
escolha op
caso "1"
escreval("DIGITE O VALOR DO SAQUE ")
leia(valor)
se valor > saldo entao
escreval("SAQUE IMPOSS�VEL POR FALTA DE SALDO; ")
escreva ("APERTE ENTER PARA NOVA OP��O!")
senao
saldo <- saldo - valor
ext1[j] <- "Saque de "
ext2[j] <- valor
ext3[j] <- saldo
j <- j + 1
escreva ("SAQUE EFETUADO, APERTE ENTER PARA NOVA OP��O!")
fimse
leia(parada)
caso "2"
escreval("DIGITE O VALOR DO DEP�SITO ")
leia(valor)
se valor <= 0 entao
escreval("DEP�SITO INV�LIDO")
escreva ("APERTE ENTER PARA NOVA OP��O!")
senao
saldo <- saldo + valor
ext1[j] <- "Deposito de"
ext2[j] <- valor
ext3[j] <- saldo
j <- j + 1
escreval ("DEP�SITO REALIZADO, APERTE ENTER PARA NOVA OP��O!")
fimse
leia(parada)
caso "3"
escreval("Digite o banco para transfer�ncia")
leia(banco)
escreval("Digite o nome do titular da conta")
leia(Titular1)
escreval("Insira o n� da conta")
leia (num)
escreval("DIGITE O VALOR DA TRANSFER�NCIA")
leia(valor)
se valor > saldo entao
escreval("SAQUE IMPOSS�VEL POR FALTA DE SALDO")
escreva ("APERTE ENTER PARA NOVA OP��O!")
senao
saldo <- saldo - valor

ext1[j] <- "Transferencia de"
ext2[j] <- valor
ext3[j] <- saldo
j <- j + 1
escreval("==================================================================================")
escreval("|                 Voc� transferiu o valor de:",valor,"                           |")
escreval("|                 Para:", Titular1,"                                             |")
escreval("|                 Conta:",num,"                                                  |")
escreval("==================================================================================")
escreva ("TRANSFER�NCIA REALIZADA, APERTE ENTER PARA NOVA OP��O!")
fimse
leia(parada)
caso "4"
para i de 1 ate 100 faca
se ext1[i] <> "" entao
escreva(ext1[i])
escreva(" ")
escreva(ext2[i])
escreva(" SALDO de.: ")
escreval(ext3[i])
fimse
fimpara
escreva ("APERTE ENTER PARA NOVA OP��O")
leia(parada)
fimescolha
ate op="9"
escreval(" Tchau!! Goestei muito de vc. Espero sua volta <3")
fimalgoritmo
