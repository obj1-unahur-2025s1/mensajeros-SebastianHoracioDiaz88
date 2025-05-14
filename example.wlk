object roberto {

var transporte = bici

const pesoRoberto = 90

method peso () = pesoRoberto + transporte.peso()

method puedeLlamar () = false

method cambiarTransporte (unTransporte) {

    transporte = unTransporte

}


}

object chuck {
  
    method peso () = 80

    method puedeLlamar () = true

  
}

object neo {

  var tieneCredito = true

  method peso () = 0

  method puedeLlamar () = tieneCredito

  method CambiarCreditoEnCelular () {
    tieneCredito = !tieneCredito
  }

}


object puenteBruklyn {

  method puedePasar (mensajero) = mensajero.peso() <= 1000

}


object matrix {

  method puedePasar (mensajero) = mensajero.puedeLlamar()

}


object paquete {

var estaPago = true

var destino = puenteBruklyn

method precio () = 50 

method cambiarDestino (unDestino) {

  destino = unDestino

}

method estaPago () = estaPago

method cambioEstadoDePago () {

  estaPago = !estaPago

} 

method mensajeroPuedeLlegarADestino (unMensajero) = destino.puedePasar(unMensajero) && self.estaPago()

}



object paquetito{

  method estaPago () = true
  method mensajeroPuedeLlegarADestino (unMensajero) = true
  method precio () = 0

}

object paqueton {

const destinos = [puenteBruklyn, matrix]

var pagado = 0

method precio() = destinos.size() * 100

method estaPago() = pagado == self.precio()

method pasaPorTodos(unMensajero) = destinos.all({destino=> destino.puedePasar(unMensajero)})

method mensajeroPuedeLlegarADestino (unMensajero) = self.estaPago() and self.pasaPorTodos(unMensajero)

 method pagar(importe) {
  pagado = pagado + importe
 }

}

object bici {

  method peso () = 5

}

object camion {

  var cantidadDeAcoplados = 1

  method peso() = cantidadDeAcoplados * 500

  method cantidadDeAcoplados(unaCantidad) {
    cantidadDeAcoplados = unaCantidad
  }

}