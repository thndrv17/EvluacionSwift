import Foundation
// Enumeración OperacionMatematica con casos para las operaciones matemáticas
enum OperacionMatematica {
    case suma
    case resta
    case multiplicacion
    case division
}

// Clase OperadorMatematico con función estática para realizar operaciones matemáticas
class OperadorMatematico {
    static func realizarOperacion(numero1: Double, numero2: Double, operacion: OperacionMatematica) -> Double {
        switch operacion {
        case .suma:
            return numero1 + numero2
        case .resta:
            return numero1 - numero2
        case .multiplicacion:
            return numero1 * numero2
        case .division:
            // Manejo de división entre cero
            if numero2 != 0 {
                return numero1 / numero2
            } else {
                print("Error: División entre cero")
                return 0
            }
        }
    }
}

// Ejemplos de uso de la función realizarOperacion
let resultadoSuma = OperadorMatematico.realizarOperacion(numero1: 10, numero2: 5, operacion: .suma)
let resultadoResta = OperadorMatematico.realizarOperacion(numero1: 10, numero2: 5, operacion: .resta)
let resultadoMultiplicacion = OperadorMatematico.realizarOperacion(numero1: 10, numero2: 5, operacion: .multiplicacion)
let resultadoDivision = OperadorMatematico.realizarOperacion(numero1: 10, numero2: 5, operacion: .division)

print("Resultado de la suma: \(resultadoSuma)")
print("Resultado de la resta: \(resultadoResta)")
print("Resultado de la multiplicación: \(resultadoMultiplicacion)")
print("Resultado de la división: \(resultadoDivision)")

