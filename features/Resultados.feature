Feature:
Como jugador de Picas y Fijas
Quiero Ver los resultados de las palabras
Para saber si tengo aciertos en PICAS

Scenario: Cuando ingrese la palabra Arbol
	Given que abri el juego
	When inicie el juego
	And ingrese el numero "Arbol"
	And Presionar el boton Validar
	Then Debo ver "Arbol - 0F 3P"