class Persona {
	var property posicion
	const elementosCerca
	var criterioDePasar //por enunciado elegí composicion
	
	var eleccionDeComida
	const buche = new List()
	
	//punto1
	method mePasas(unElemento, otroComensal) {
		if (otroComensal.tenesElElemento(unElemento)){
			criterioDePasar.pasar(unElemento, otroComensal, self)
		}
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
	
}
