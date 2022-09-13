import chicos.*
import legion.*
import elementos.*

object mirca {
	var tolerancia = 21

	method tolerancia() = tolerancia
	
		method serAsustadoPor(chico) {
		chico.recibirCaramelos(self.entregarCaramelos(chico))
		tolerancia = tolerancia - 1
	}

		method entregarCaramelos(chico) = (chico.capacidadDeAsustar() - tolerancia).max(0)
	
	
	
}

