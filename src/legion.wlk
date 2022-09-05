import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {

	var property integrantes = []

	method capacidadDeAsustar() = integrantes.sum({ chico => chico.capacidadDeAsustar() })

	method agregarIntegrantes(nuevosIntegrantes) {
		integrantes.addAll(nuevosIntegrantes)
	}

	method lider() = integrantes.max({ chico => chico.capacidadDeAsustar() })

	method caramelos() = integrantes.sum({ chico => chico.caramelos() })

	method recibirCaramelos(cantidad) {
		self.lider().recibirCaramelos(cantidad)
	}

	method todosLosDisfraces() = integrantes.map({ chico => chico.disfraces().asSet() }).flatten()

	method disfracesRepetidos() = self.todosLosDisfraces().filter({ d => self.todosLosDisfraces().occurrencesOf(d) > 1 })

	method sacarseloATodos(disfraz) {
		integrantes.forEach({ d => d.quitarDisfraz(disfraz)})
	}

	method normaSinRepetidos() {
		self.disfracesRepetidos().forEach({ disfraz => self.sacarseloATodos(disfraz)})
	}

}

object barrio {

	var chicos = []

	method chicosConMasCaramelos(cantidad) = chicos.sortedBy({ a , b => a.caramelos() > b.caramelos() }).take(cantidad)
	

	method chicos(nuevosChicos) {
		chicos = nuevosChicos
	}

	method algunoMuyAsustador() = chicos.any({ chico => chico.capacidadSusto() > 42 })

}

