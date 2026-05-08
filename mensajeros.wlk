import transportes.* 

object roberto {
    var transporte = bicicleta

    method pesoPropio() = 80
    method peso() = transporte.peso() + self.pesoPropio()
    method puedeLlamar() = false
    method puedeEntregar_A_(paq,des) = des.mensajeroPuedePasar(self) and paq.estaPago()
    method cambiarTransporte(nuevoTransporte) {transporte = nuevoTransporte}
}

object chuckNorris {
    method peso() = 80

    method puedeLlamar() = true
    method puedeEntregar_A_(paq,des) = des.mensajeroPuedePasar(self) and paq.estaPago()
}

object neo {
    var property credito = 10
    method peso() = 0

    method puedeLlamar() = credito > 0
    method cargarCredito(cantidad) {credito += cantidad}
    method puedeEntregar_A_(paq,des) = des.mensajeroPuedePasar(self) and paq.estaPago()
}

