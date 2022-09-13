object trajeDeBruja {

	method nivelSusto() = 10

}

object barba {

	var longitud = 1

	method agregarPelos() {
		longitud = longitud + 3
	}

	method perderPelos() {
		longitud = longitud - 2
	}

	method nivelSusto() = longitud * 5

}

object mascaraDracula {

	const tamanio = 2

	method nivelSusto() = tamanio * 2

}

object mascaraFrankenstein {

	method nivelSusto() = 22

}

object mascaraPolitico {

	method nivelSusto(promesas) = promesas

}

