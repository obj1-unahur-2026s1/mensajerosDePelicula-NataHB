import transportes.* 
import destinos.*
import paquetes.*

object roberto {
    var transporte = bicicleta
    var destino = puenteBrooklyn
    var paquete = paquetito

    method pesoPropio() = 80
    method peso() = transporte.peso() + self.pesoPropio()
    method puedeLlamar() = false
    method puedeEntregarPaquete() = destino.mensajeroPuedePasar(self) and paquete.estaPago()
}

object chuckNorris {
    var destino = puenteBrooklyn
    var paquete = paquetito
    method peso() = 80

    method puedeLlamar() = true
    method puedeEntregarPaquete() = destino.mensajeroPuedePasar(self) and paquete.estaPago()
}

object neo {
    var property credito = 10
    var destino = puenteBrooklyn
    var paquete = paquetito
    method peso() = 0

    method puedeLlamar() = credito > 0
    method puedeEntregarPaquete() = destino.mensajeroPuedePasar(self) and paquete.estaPago()
}

