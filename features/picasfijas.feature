Feature:
Yo como: jugador
Quiero: ver un mensaje de Bienvenida
Para: iniciar el juego
	
Scenario: poder ver titulo de bienvenida
	Given Que abri el juego
	Then Debo ver mensaje de "Bienvenido al juego Pica-Chu"


Scenario: Ver pista de palabra oculta
	Given Que abri el juego
	Then Debo ver mensaje de "La palabra secreta tiene 10 caractere(s)"
