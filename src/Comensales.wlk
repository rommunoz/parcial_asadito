import Persona.*

object osky inherits Persona {
	override method estoyBien() = true
}

object moni inherits Persona(posicion = "1@1") {
	override method estoyBien() = posicion == "1@1"
}

object facu inherits Persona {
	override method estoyBien() = self.comiCarne()
	
	method comiCarne() = buche.any{comida => comida.esCarne()}
	//igual habria que contemplar si alguien tiene el mismo criterio que facu
}

object vero inherits Persona {
	override method estoyBien() = elementosCerca.size() <= 3
}

