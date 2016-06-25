Feature: Ahorcado

Scenario: Mostrar el titulo
	Given Inicio la aplicacion
	Then Debo ver "Bienvenido al juego del ahorcado"

Scenario: Muestro cantidad letras de la palabra
	Given Inicio la aplicacion
	Then Debo ver "_ _ _ _ _ _ _ _ _ _"


Scenario: El usuario puede ingresar una letra
	Given Inicio la aplicacion
	Then Debo ver "Ingrese una letra"
	Then Debo ver elemento con id "letter"

Scenario: El usuario puede ingresar una letra y verla en pantalla
	Given Inicio la aplicacion
	When Ingreso la letra "a"
	And Presiono el boton "jugar"
	Then Debo ver "La letra ingresada fue: a"

Scenario: El usuario puede ingresar una letra y ver si matchea
	Given Inicio la aplicacion
	Given Ingreso la letra "a"
	When Presiono el boton "jugar"
	Then Debo ver "_ _ _ _ _ _ _ a _ _"

Scenario: El usuario ve sus vidas restantes al comenzar el juego
	Given Inicio la aplicacion
	Then Debo ver "Vidas restantes: 5"

Scenario: El usuario ingresa una letra erronea y quiere ver sus vidas restantes
	Given Inicio la aplicacion
	Given Ingreso la letra "x"
	When Presiono el boton "jugar"
	Then Debo ver "Vidas restantes: 4"

Scenario: El usuario ingresa una letra correcta y quiere ver sus vidas restantes
	Given Inicio la aplicacion
	Given Ingreso la letra "m"
	When Presiono el boton "jugar"
	Then Debo ver "Vidas restantes: 5"


