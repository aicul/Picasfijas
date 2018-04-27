Feature:
Yo como: jugador
Quiero: ver un mensaje de Bienvenida
Para: iniciar el juego
	
Scenario: poder ver titulo de bienvenida
	Given Que abri el juego
	Then Debo ver mensaje de "Bienvenido al juego Pica-Chu"
