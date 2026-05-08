
object bicicleta {
    method peso() = 5
}

object camion {
    var cantAcoplados = 2
    method cambiarCantAcoplados(nuevaCantidad) {cantAcoplados = nuevaCantidad}
    method peso() = cantAcoplados * 500
}