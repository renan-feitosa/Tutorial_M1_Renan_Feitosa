extends Node2D

var teste = false
var valor = 0
var numero = 0 #Os nomes das variáveis não podem conter letras com acentos (var número -> var numero)
var nome
var lista = [] # Falta a declaração de variável (lista -> var lista)

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Os nomes das variáveis não podem conter letras com acentos (número -> numero) / É necessário um $ para chamar outro node (LineEdit -> $LineEdit)
	nome = $LineEdit2.text #Linha escrita ao contrário e sem declaração de variável ($LineEdit2.text = nome -> v ar nome = $LineEdit2.text)

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	lista = []
	for i in range(numero):
#		numero += i #variável escrita de forma errada (Numero -> numero)
		lista.append(i) #variável errada para append (Numero -> i)
		i += 1
	print(lista)
	$Label.text = str(numero) #Transformar array numero em string


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont=0 # Falta a declaração de variável (cont -> var cont)
	var i = 0
	while i < len(lista): #Falta parâmetros para o while (while(len(lista)) -> while i < len(lista)
		if(lista[i]%2==1):
			cont += 1
		if(cont == 1): #O parâmetro retornava verdadeiro se fosse diferente de zero, não com o necessário para re
			nome = nome + "baldo" #Caso for impar e cont for igual a 1, adiciona "baldo"
			break
		i += 1
	$Label2.text = nome #"nome" foi declarado como variável local da função "on button pressed". Precisa ser declarado fora da função para esta linha funcionar
