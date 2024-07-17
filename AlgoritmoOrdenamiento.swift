import Foundation
// Función para ordenar un array de enteros utilizando el algoritmo de ordenamiento por selección
func ordenarPorSeleccion(array: [Int]) -> [Int] {
    var arrayOrdenado = array
    
    for i in 0..<arrayOrdenado.count {
        var minIndex = i
        
        for j in i+1..<arrayOrdenado.count {
            if arrayOrdenado[j] < arrayOrdenado[minIndex] {
                minIndex = j
            }
        }
        
        if minIndex != i {
            arrayOrdenado.swapAt(i, minIndex)
        }
    }
    
    return arrayOrdenado
}

// Array de ejemplo
let arrayEjemplo = [64, 25, 12, 22, 11]

// Ordenar el array de ejemplo utilizando el algoritmo de ordenamiento por selección
let arrayOrdenado = ordenarPorSeleccion(array: arrayEjemplo)

print("Array antes de ordenar: \(arrayEjemplo)")
print("Array después de ordenar por selección: \(arrayOrdenado)")


