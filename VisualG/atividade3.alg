algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 06/09/2017
// Se��o de Declara��es 
var
n:inteiro
x:inteiro
nome:caractere
sexo:caractere
meninos:inteiro
meninas:inteiro
inicio
// Se��o de Comandos
escreval("quantidades de alunos presente:")
leia(n)
para x de 1 ate n passo 1 faca
escreval("nome do aluno")
leia(nome)
escreval("o aluno � menino ou menina (menino=h menina=m)")
leia(sexo)
se (sexo=h) entao
meninos<-meninos+1
fimse
se (sexo=m) entao
meninas<-meninas+1
fimse
enquanto (sexo<>h) ou (sexo<>m) faca
escreval("sexo invalido, tente novamente(menino=h, menina=m)
leia(sexo)
fimenquanto
fimpara
escreval("o numero de meninos �:",meninos)
escreval("o numero de meninas �:",meninas)

fimalgoritmo
