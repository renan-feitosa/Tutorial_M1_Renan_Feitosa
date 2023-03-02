extends Node2D

var teste = false
var valor = 0
var numero = 0 #Os nomes das variáveis não podem conter letras com acentos (var número -> var numero)
var nome
var lista = [] # Falta a declaração de variável (lista -> var lista)

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) #Os nomes das variáveis não podem conter letras com acentos (número -> numero) / É necessário um $ para chamar outro node (LineEdit -> $LineEdit)
	nome = $LineEdit2.text #Linha escrita ao contrário e sem declaração de variável ($LineEdit2.text = nome -> var nome = $LineEdit2.text)
 

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero += i #variável escrita de forma errada (Numero -> numero)
		lista.append(numero) #variável escrita de forma errada (Numero -> numero)
	$Label.text = str(numero) #Transformar array numero em string


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	for i in range(len(lista)): #Mudar de while para for (while(len(lista)) -> for i in range(len(lista))
		var cont=0 # Falta a declaração de variável (cont -> var cont)
		var index=0 # Falta a declaração de variável (index -> var index)
		if(lista[i]%2==1):
			nome = nome+"baldo" #Caso for impar, adiciona "baldo" (cont+=1 -> nome = nome+"baldo")
		if(cont%2==0): #O parâmetro retornava verdadeiro se fosse diferente de zero, não com resto 0
			cont += 1
		$Label2.text = nome #nome foi declarado como variável local da função "on button pressed". Precisa ser declarado fora da função para esta linha funcionar
