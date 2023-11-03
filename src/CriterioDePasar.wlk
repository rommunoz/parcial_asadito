
class CriterioDePasar {
	method pasar(unElemento, otroComensal, unPasador)
}

object sordo inherits CriterioDePasar {
	override method pasar(_unElemento, otroComensal, unPasador) {
		unPasador.pasarPrimerElementoA(otroComensal)
	}
}

object pocaPaciencia inherits CriterioDePasar {
	override method pasar(_unElemento, otroComensal, unPasador) {
		unPasador.pasarleTodoA(otroComensal)
	}
}

object charlatan inherits CriterioDePasar {
	override method pasar(_unElemento, otroComensal, unPasador) {
		unPasador.cambiameDePosicion(otroComensal)
	}
}

object normal inherits CriterioDePasar {
	override method pasar(unElemento, otroComensal, unPasador) {
		unPasador.pasarA(otroComensal, unElemento)
	}
}