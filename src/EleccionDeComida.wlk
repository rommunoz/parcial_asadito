import Comida.*

class EleccionDeComida { //las condiciones a cumplir se implementaran al agregar un nuevo criterio
	method quieroComer(unaComida)
}

object vegetariano inherits EleccionDeComida {
	override method quieroComer(unaComida) = not unaComida.esCarne()
}

object dietetico inherits EleccionDeComida {
	override method quieroComer(unaComida) {
		return unaComida.calorias() < oms.caloriasMaximas()
	}
}

class Alternado inherits EleccionDeComida {
	var aceptoAnterior = false
	
	override method quieroComer(_unaComida) {
		aceptoAnterior = aceptoAnterior.negate()
		return aceptoAnterior
	}
}