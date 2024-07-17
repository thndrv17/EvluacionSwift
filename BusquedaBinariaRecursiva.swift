import Foundation
func busquedaBinariaRecursiva(_ array: [Int], _ valor: Int, inicio: Int, fin: Int) -> Int? {
    if inicio > fin {
        return nil
    }
    
    let medio = (inicio + fin) / 2
    
    if array[medio] == valor {
        return medio
    } else if array[medio] < valor {
        return busquedaBinariaRecursiva(array, valor, medio + 1, fin)
    } else {
        return busquedaBinariaRecursiva(array, valor, inicio, medio - 1)
    }
}

// Array de ejemplo ordenado
let arrayEjemplo = [1, 3, 5, 7, 9, 11, 13, 15, 17]
let valorBusqueda = 9

// Prueba de la función de búsqueda binaria recursiva
if let posicion = busquedaBinariaRecursiva(arrayEjemplo, valorBusqueda, 0, arrayEjemplo.count - 1) {
    print("El valor \(valorBusqueda) se encuentra en la posición \(posicion) en el array de ejemplo.")
} else {
    print("El valor \(valorBusqueda) no se encontró en el array de ejemplo.")
}

