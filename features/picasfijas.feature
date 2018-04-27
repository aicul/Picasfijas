Feature:
Yo como: jugador
Quiero: ver un mensaje de Bienvenida
Para: iniciar el juego
	
Scenario: poder ver titulo de bienvenida
	Given Que abri el juego
	Then Debo ver mensaje de "Bienvenido al juego Pica-Chu"

Scenario: Poder ver cantidad de intentos disponibles
	Given que abri el juego
	When inicie el juego
	And Debo ver mensaje de "La palabra secreta tiene 10 caracteres"
	Then Debo ver mensaje de "Tiene 10 intentos"


