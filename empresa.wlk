

object empresaMensajeria {
    const mensajeros = []
    const paquetesPendientes = []
    const paquetesEnviados = []

    method mostrarMensajeros() = mensajeros
    method mostrarPaquetesEnviados() = paquetesEnviados
    method mostrarPaquetesPendientes() = paquetesPendientes
    method contratarMensajero(mensajero) {mensajeros.add(mensajero)}
    method despedirMensajero(mensajero) {mensajeros.remove(mensajero)}
    method despedirATodos() {mensajeros.clear()}
    method mensajeriaEsGrande() = mensajeros.size() > 2
    method paquetePuedeSerEntregadoPorElPrimerMensajero(paq, des) = mensajeros.first().puedeEntregar_A_(paq, des) 
    method ultimoPesoMensajero() = mensajeros.last().peso()
    method puedeSerLlevadoPorEmpresa(paquete) = mensajeros.any({m => paquete.puedeSerLlevadoPorMensajero(m)}) 
    method mensajerosQuePuedenLlevarPaquete(paquete) = mensajeros.filter({m => paquete.puedeSerLlevadoPorMensajero(m)})
    method mensajeriaTieneSobrepeso() = mensajeros.fold(1, {acumulador, m => acumulador * m.peso()}) > 500
    method paquetePendienteMasCaro() = paquetesPendientes.max({p => p.precio()})
    method agregarPaquetePendiente(paquete) { paquetesPendientes.add(paquete)}
    method eliminarPaquetePendiente(paquete) { paquetesPendientes.remove(paquete)}
    method enviarPaquete(paquete){
        if (self.puedeSerLlevadoPorEmpresa(paquete)){
            paquetesEnviados.add(paquete)
        }
        else{
            paquetesPendientes.add(paquete)
        }
    }
    method facturacionDeLaEmpresa() = paquetesEnviados.sum({p=> p.precio()})

}