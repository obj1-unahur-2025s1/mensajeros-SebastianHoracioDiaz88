import example.*

object empresa {

  const enviados = []

  const pendientes = []

  const mensajeros = [roberto, neo, chuck]

  method mensajeros () = mensajeros

  method contratar (unMensajero) {

    mensajeros.add(unMensajero)
  } 

  method despedir (unMensajero) {
    mensajeros.remove(unMensajero)
  }

  method despedirATodos () {
    mensajeros.clear()
  }

  method esGrande() = mensajeros.size() > 2

  method puedeEntregarPrimerEmpleado () = paquete.mensajeroPuedeLlegarADestino (mensajeros.head())

  method pesoUltimoEmpleado () = mensajeros.last().peso()


// tercera parte

method puedeEntregar(unPaquete) = mensajeros.any({mensajero => unPaquete.mensajeroPuedeLlegarADestino (mensajero)})

method mensajerosQuePuedenEntregar (unPaquete) = mensajeros.filter({mensajero =>unPaquete.mensajeroPuedeLlegarADestino (mensajero)})

method haySobrePeso () = mensajeros.map({mensajero => mensajero.peso()}).sum() > 500

method cantidadEnviados () = enviados.size()

method cantidadPendietnes () = pendientes.size()

method enviar(unPaquete) {
     if(self.puedeEntregar(unPaquete))
        enviados.add(unPaquete)
     else
        pendientes.add(unPaquete)
  }

  method facturacion() = enviados.sum({paquete=>paquete.precio()})

   method enviarTodos(listaDePaquetesAEnviar){
    listaDePaquetesAEnviar.forEach{paquete=>self.enviar(paquete)}
  }

 method pendienteCaro() = pendientes.max({paquete => paquete.precio()})


  method reenviarPendienteCaro() {
    const caro = self.pendienteCaro()
    pendientes.remove(caro)
    self.enviar(caro)
  }

}















