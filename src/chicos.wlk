import elementos.*

object macaria{

	var property nivelIra = 10
	var property disfraces = []
	var cantidadCaramelos = 0

	method disfrazar(elemento) {
		disfraces.add(elemento)
	}

	method listaDisfraces() = disfraces

	method seEnoja() {
		nivelIra = nivelIra + 1
	}

	method capacidadDeAsustar() = nivelIra + disfraces.sum({ disfraz => disfraz.nivelSusto() })

	method recibirCaramelos(cantidad) {
		cantidadCaramelos = cantidadCaramelos + (cantidad * 3).div(4)
	}

	method caramelos() = cantidadCaramelos

	method quitarDisfraz(elemento) {
		disfraces.remove(elemento)
	}

	method elementoMenosEfectivo() = disfraces.min({ disfraz => disfraz.nivelSusto() })

	method quitarMenosEfectivo() {
		self.quitarDisfraz(self.elementoMenosEfectivo())
	}

}

object pancracio {

	var property bu = 4
	var property disfraz = mascaraDracula
	var cantidadCaramelos = 0

	method capacidadDeAsustar() {
		return bu - 1 + disfraz.nivelSusto()
	}

	method recibirCaramelos(cantidad) {
		cantidadCaramelos = cantidadCaramelos + cantidad
	}

	method caramelos() = cantidadCaramelos

	method disfrazar(nuevoElemento) {
		disfraz = nuevoElemento
	}

	method quitarDisfraz(elementoEquipado) {
		bu = bu + 2
	}

	method listaDisfraces() = [ disfraz ]

}



// El chico inventado .

object pedro {
	var disfraces = []
	var cantidadCaramelos = 0
	
	method capacidadDeAsustar() = disfraces.count({ disfraz => disfraz.nivelSusto()>20 })
	
	method recibirCaramelos(cantidad) {
		 cantidadCaramelos = cantidadCaramelos + cantidad
	}

	method caramelos() = cantidadCaramelos 
	
	method disfrazar(elemento) {
		disfraces.add(elemento)
	}
	method disfraces() = disfraces 
	
	method quitarDisfraz(elemento) {
		disfraces.remove(elemento)
	}

	method tirarTodosLosDisfraces() {
		disfraces.clear()
	}
}



