object pepita {
	var energia = 0

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return energia.between(500,1000)
	}
	
	method cuantoQuiereVolar() {
		var kilometros = energia / 5
		if (energia.between(300,400)) {
			kilometros += 10
		}
		if ( energia % 20 == 0 ) {
			kilometros += 15
		}
		return kilometros	
	}
	
	method salirAComer() {
		self.vola(5) // Volar al deposito
		self.come(alpiste)
		self.vola(5) // Volver
	}
	
	method haceLoQueQuieras() {
		if ( self.estaCansada() ) {
			self.come(alpiste)
		}
		if ( self.estaFeliz() ) {
			self.vola(8)
		}
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var energia = 15
	
	method mojarse() {
		energia = 15
	}
	
	method secarse() {
		energia = 20
	}
	
	method energiaQueOtorga() { 
		return energia
	}
}

object canelones {
	var energia = 20
	
	method ponerSalsa() {
		energia += 5
	}
	
	method sacarSalsa() {
		energia -= 5
	}
	
	method ponerQueso() {
		energia -= 7
	}
	
	method sacarQueso() {
		energia -= 7
	}
	
	method energiaQueOtorga() { 
		return energia
	}
}

object roque {
	var pupilo
	method tuPupiloEs(ave) {
		pupilo = ave
	}
	method entrenar() {
		pupilo.vola(10)
		pupilo.come(alpiste)
		pupilo.vola(5)
		pupilo.haceLoQueQuieras()
	}
}

object pepon {
	var energia = 0
	
	method vola(kms) {
		energia -= (1 + kms * 0.5)
	}

	method come(comida) {
		energia = energia + (comida.energiaQueOtorga() / 2)
	}
	
	method haceLoQueQuieras() {
		self.vola(1)
	}
}

object pipa {
	var energia = 0
	
	method vola(kms) {
		energia -= (1 + kms * 0.5)
	}

	method come(comida) {
		energia = energia + (comida.energiaQueOtorga() / 2)
	}
	
	method haceLoQueQuieras() {
		self.vola(1)
	}
}





