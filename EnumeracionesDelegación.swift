import Foundation
// Definición de la enumeración EstadoPedido con los casos procesando, enviado y entregado
enum EstadoPedido {
    case procesando
    case enviado
    case entregado
}

// Definición del protocolo NotificacionPedido con el método notificarCambioDeEstado
protocol NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido)
}

// Implementación de la clase Pedido que tiene una propiedad estado de tipo EstadoPedido y una propiedad delegado de tipo NotificacionPedido
class Pedido {
    var estado: EstadoPedido
    var delegado: NotificacionPedido?

    // Inicializador que recibe el estado inicial del pedido
    init(estado: EstadoPedido) {
        self.estado = estado
    }

    // Función que cambia el estado del pedido y notifica al delegado
    func cambiarEstado(nuevoEstado: EstadoPedido) {
        self.estado = nuevoEstado
        delegado?.notificarCambioDeEstado(nuevoEstado: nuevoEstado)
    }
}

// Creación de una instancia de Pedido
let pedido = Pedido(estado: .procesando)

// Implementación de una clase que actúa como delegado y cumple con el protocolo NotificacionPedido
class Notificador: NotificacionPedido {
    func notificarCambioDeEstado(nuevoEstado: EstadoPedido) {
        print("El estado del pedido ha cambiado a \(nuevoEstado)")
    }
}

// Asignación del delegado a la instancia de Pedido
let notificador = Notificador()
pedido.delegado = notificador

// Cambio de estado del pedido y notificación al delegado
pedido.cambiarEstado(nuevoEstado: .enviado)

