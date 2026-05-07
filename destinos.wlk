import mensajeros.*

object puenteBrooklyn {
    method mensajeroPuedePasar(mensajero) = mensajero.peso() <= 1000
}

object laMatrix {
    method mensajeroPuedePasar(mensajero) = mensajero.puedeLlamar()

}