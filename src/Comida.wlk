class Comida {
	var property calorias
	
	method esCarne() = false
	method esPesada() = calorias > 500
}

class ComidaConCarne inherits Comida {
	override method esCarne() = true
}

object oms {
	var property caloriasMaximas = 500
}