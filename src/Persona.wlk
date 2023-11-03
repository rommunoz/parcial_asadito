import Comensales.*
import CriterioDePasar.*
import EleccionDeComida.*

class Persona {
	var property posicion = ""
	const elementosCerca = new List()
	var criterioDePasar = normal //por enunciado elegí composicion
	
	var eleccionDeComida = estandar
	const buche = new List()
	
	//punto1
	method mePasas(unElemento, otroComensal) {
		if (not otroComensal.tenesElElemento(unElemento))
			throw new Exception(message = "No tiene el elemento cerca")
		criterioDePasar.pasar(unElemento, otroComensal, self)
	}
	
	method tenesElElemento(unElemento){
		return elementosCerca.contains(unElemento)
	}
	
	//sordo
	method pasarPrimerElementoA(otroComensal){
		self.pasarA(otroComensal, elementosCerca.head())
	}
	
	method pasarA(otroComensal, unElemento){
		elementosCerca.remove(unElemento)
		otroComensal.recibirElemento(unElemento)
	}
	
	method recibirElemento(unElemento){
		elementosCerca.add(unElemento)
	}
	//pasaTodo
	method pasarleTodoA(otroComensal){
		elementosCerca.forEach{elemento => self.pasarA(otroComensal, elemento)}
	}
	//charlatan
	method cambiameDePosicion(otroComensal){
		const unaPosicion = otroComensal.posicion()
		otroComensal.posicion(posicion) //rompo todo el encapsulamineto?? creo que tiene sentido que se conozca la posicion
		self.posicion(unaPosicion)
	}
	//normal usa pasarA directo
	//hace falta codificar cambiar de criterioDePasar??
	
	//punto 2
	method pasaUnaBandejaCon(unaComida){
		if(self.quieroComer(unaComida)){
			self.comer(unaComida)
		}
	}
	
	method quieroComer(unaComida){
		return eleccionDeComida.quieroComer(unaComida)
	}
	
	method comer(unaComida){
		buche.add(unaComida)
	}
	
	//3
	method estaPipon(){
		buche.any{comida => comida.esPesada()}
	}
	
	//4
	method laEstaPasandoBien() = self.comiAlgo() and self.estoyBien()
	
	method estoyBien() //lo dejo como template, cada persona lo define
	
	method comiAlgo() = not buche.isEmpty()
	
}


