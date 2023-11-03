class Comida {
	var property calorias
	
	method esCarne() = false
}

class ComidaConCarne inherits Comida {
	override method esCarne() = true
}

object oms {
	var property caloriasMaximas = 500
}