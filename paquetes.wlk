object paquetito {
    method estaPago() = true 
    method precio() = 0
    method puedeSerLlevadoPorMensajero(mensajero) = true 
}

object paquetonViajero {
    const property destinos = []
    // suponiendo que no se pasarian del precio y pagarian exactamente su valor
    var estaPago = cantidadPagada == self.precio()
    var cantidadPagada = 0

    method agregarDestino(destino) { destinos.add(destino) }
    method estaPago() = estaPago
    method precio() = 100 * destinos.size()
    method pagarParcialmente(pago) { cantidadPagada += pago }
    method pagarPaquete() { estaPago = true }
    method puedeSerLlevadoPorMensajero(mensajero) = destinos.all({d => mensajero.puedeEntregar_A_(self, d)}) and self.estaPago() 
}


object paquete {
    var estaPago = false
    method estaPago() = estaPago
    method pagarPaquete() { estaPago = true }
    method precio() = 50
    method puedeSerLlevadoPorMensajero(mensajero) = true
}
