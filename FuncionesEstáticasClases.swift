import Foundation
// Definición de la clase Calculadora
class Calculadora {
    
    // Función estática para sumar dos números enteros
    static func sumar(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    // Función estática para restar dos números enteros
    static func restar(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    // Función que acepta un array de enteros y calcula la suma y resta total de los elementos del array
    static func calcularSumaYResta(array: [Int]) -> (Int, Int) {
        var sumaTotal = 0
        var restaTotal = 0
        
        // Iterar sobre los elementos del array y calcular la suma y resta total
        for num in array {
            sumaTotal = sumar(sumaTotal, num)
            restaTotal = restar(restaTotal, num)
        }
        
        return (sumaTotal, restaTotal)
    }
}

// Ejemplo de uso
let numeros = [5, 3, 8, 2]
let resultado = Calculadora.calcularSumaYResta(array: numeros)
print("La suma total es \(resultado.0) y la resta total es \(resultado.1)")
