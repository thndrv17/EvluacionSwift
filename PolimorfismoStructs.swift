import Foundation
// Definición del protocolo Figura con el método calcularArea
protocol Figura {
    func calcularArea() -> Double
}

// Implementación de la estructura Cuadrado que conforma al protocolo Figura
struct Cuadrado: Figura {
    var lado: Double
    
    func calcularArea() -> Double {
        return lado * lado
    }
}

// Implementación de la estructura Rectangulo que conforma al protocolo Figura
struct Rectangulo: Figura {
    var base: Double
    var altura: Double
    
    func calcularArea() -> Double {
        return base * altura
    }
}

// Función que acepta un array de Figura y calcula el área total de todas las figuras
func calcularAreaTotal(figuras: [Figura]) -> Double {
    var areaTotal = 0.0
    
    // Iterar sobre todas las figuras y sumar sus áreas
    for figura in figuras {
        areaTotal += figura.calcularArea()
    }
    
    return areaTotal
}

// Ejemplo de uso
let cuadrado = Cuadrado(lado: 5.0)
let rectangulo = Rectangulo(base: 4.0, altura: 3.0)

let figuras: [Figura] = [cuadrado, rectangulo]
let areaTotal = calcularAreaTotal(figuras: figuras)

print("El área total de todas las figuras es: \(areaTotal)")

