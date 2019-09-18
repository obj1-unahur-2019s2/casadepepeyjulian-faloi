object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kiloMilanesasRebozadas {
	var property precio = 260
}

object botellaSalsaDeTomates {
	var property precio = 90
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object kiloDeCebollas {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object dolar {
	var property cotizacion = 56.50
}

object compu {
	method precio() {
		return 500 * dolar.cotizacion()
	}
	method esComida() {
		return false
	}
	method esElectrodomestico() {
		return true
	}
}

object packDeComida {
	var plato
	var aderezo
	
	method plato() { return plato }
	method aderezo() { return aderezo}
	method configurar(unPlato, unAderezo) {
		plato = unPlato
		aderezo = unAderezo
	}	

	method precio() { return plato.precio() + aderezo.precio() }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object packDeRegalo {
	const pack = []
	method agregarAlPack(cosa) {
		pack.add(cosa)
	}
	method esComida() {
		return pack.all({cosas => cosas.esComida()})
	}
	method esElectrodomestico() {
		return pack.any({cosas => cosas.esElectrodomestico()})
	}
	method precio() {
		return pack.sum({cosas => cosas.precio()}) * 0.80
	}
}