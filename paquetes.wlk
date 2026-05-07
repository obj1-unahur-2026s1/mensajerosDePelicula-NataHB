object paquetito {
    method precio() = 0
    method estaPago() = true 
    method puedeSerLlevadoPorMensajero(mensajero) = true 
}

object paquetonViajero {
    const destinos = []
    // suponiendo que no se pasarian del precio y pagarian exactamente su valor
    var property estaPago = cantidadPagada == self.precio()
    var cantidadPagada = 0

    method precio() = 100 * destinos.size()
    method pagarParcialmente(pago) {
        cantidadPagada += pago
    }
    method puedeSerLlevadoPorMensajero(mensajero) = destinos.all({d => d.mensajeroPuedePasar(mensajero)}) and self.estaPago() 
}


object paqueton {
    method precio() = 50
    method estaPago() = true 
    method puedeSerLlevadoPorMensajero(mensajero) = true
}
