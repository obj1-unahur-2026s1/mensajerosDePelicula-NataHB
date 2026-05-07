object empresaMensajeria {
    const mensajeros = []

    method contratarMensajero(mensajero) {mensajeros.add(mensajero)}
    method despedirMensajero(mensajero) {mensajeros.remove(mensajero)}
    method despedirATodos() {mensajeros.clear()}
    method mensajeriaEsGrande() = mensajeros.size() > 2
    method paquetePuedeSerEntregadoPorElPrimerMensajero() = mensajeros.first().puedeEntregarPaquete() 
    method ultimoPesoMensajero() = mensajeros.last().peso()
    method puedeSerLlevadoPorEmpresa(paquete) = mensajeros.any({m => paquete.puedeSerLlevadoPorMensajero(m)}) 

}