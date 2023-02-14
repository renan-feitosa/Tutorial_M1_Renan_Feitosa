extends Node2D

func _on_Exercicio1_pressed():
	var listaPreenchida = [1,2,3,4]
	$ColorRect/Label.text = String(listaPreenchida)


func _on_Execicio2_pressed():
	var listaInputs = []
	listaInputs.append($input1.text)
	listaInputs.append($input2.text)
	listaInputs.append($input3.text)
	$ColorRect/Label.text = String(listaInputs)



func ex3():
	$ColorRect/Label.text = "Texto mostrado"
	
func _on_Exercicio3_pressed():
	ex3()
	


func ex4():
	$ColorRect/Label.text = String($input4.text)

func _on_Exercicio4_pressed():
	ex4()
