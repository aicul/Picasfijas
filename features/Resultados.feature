Feature:
Como jugador de Picas y Fijas
Quiero Ver los resultados de las palabras
Para saber si tengo aciertos en PICAS

Scenario: Cuando ingrese la palabra Arbol
	Given que abri el juego
	When inicie el juego
	And ingrese el numero "Arbol"
	And Presionar el boton Validar
	Then Debo ver "Arbol - NO VALIDA"

Scenario: Cuando ingrese la palabra Cuaderno
	Given que abri el juego
	When inicie el juego
	And ingrese el numero "Cuaderno"				
	And Presionar el boton Validar
	Then Debo ver "Cuaderno - NO VALIDA"

Scenario: Poder ver la pista de la palabra secreta
	Given que abri el juego
	When inicie el juego
	Then Debo ver mensaje de "La palabra secreta tiene 10 caracteres"

