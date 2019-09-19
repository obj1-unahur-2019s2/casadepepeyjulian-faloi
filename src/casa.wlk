import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		return cosas.add(cosa)	
	}
	
	method tirar(cosa) {
		cosas.remove(cosa)
	}
	
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	
	method tieneComida() {
		return cosas.any({cosa => cosa.esComida()})
	}
	
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000 
	}
	
	method esDerrochona() {
		return cosas.sum({cosa => cosa.precio()}) >= 9000
	}
	
	method compraMasCara() {
		return cosas.max({cosa => cosa.precio()})
	}
	
	method electrodomesticosComprados() {
		return cosas.filter({cosa => cosa.esElectrodomestico()})
	}
	
	method malaEpoca() {
		return cosas.all({cosa => cosa.esComida() })
	}
	
	method queFaltaComprar(lista) {
		return lista.filter({e => not cosas.contains(e)})
	}
	
	method queFaltaComprar_alt(lista) {
		return (lista.asSet()).difference(cosas.asSet())
	}
	
	method faltaComida() {
		return cosas.filter({cosa => cosa.esComida()}).size() < 2
	}
	
	method gastoEnComida() {
		return cosas.filter({cosa => cosa.esComida()}).sum({cosa => cosa.precio()})
	}
	
	method hayElectrodomesticosBaratos() {
		return self.electrodomesticosComprados().any({electro => electro.precio() <= 3000})
	}
	
	method preciosDeElectrodomesticos() {
		return self.electrodomesticosComprados().map{electro => electro.precio()}
	}
	
	method nivelEnAumento() {
		return cosas.last().precio() >= (cosas.first().precio() * 2)
	}
	
	method primeraComidaComprada() {
		return cosas.find { c => c.esComida() }
	}
}
