object trajeDeBruja {
	method nivelSusto() = 10
	
} 

object barba {
	
	var longitud = 1
	
	method agregarPelos(){
		longitud = longitud + 1
		
	}
	method perderPelos(){
		
		longitud = longitud - 1
		
	}
	
	method nivelSusto() = longitud * 5
}

object mascaraDracula {
	var tamanio = 2

	method nivelSusto() = tamanio * 3

}

object mascaraFrankenstein {
		
	method nivelSusto() = 22
	
}

object mascaraPolitico {
	
	method nivelSusto(promesas) = promesas
	

		
	
	
}

