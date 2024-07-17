import Foundation
// Definir el protocolo Volable
protocol Volable {
    func volar()
}

// Clase Pájaro que conforma al protocolo Volable
class Pajaro: Volable {
    func volar() {
        print("El pájaro está volando.")
    }
}

// Clase Avión que conforma al protocolo Volable
class Avion: Volable {
    func volar() {
        print("El avión está volando a gran velocidad.")
    }
}

// Crear instancias de Pájaro y Avión
let miPajaro = Pajaro()
let miAvion = Avion()

// Llamar al método volar de cada instancia
miPajaro.volar()
miAvion.volar()


