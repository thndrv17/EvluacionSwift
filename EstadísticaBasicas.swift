import Foundation
// Definición de la función calcularEstadisticas que acepta un array de enteros y devuelve la media, mediana y moda
func calcularEstadisticas(array: [Int]) -> (media: Double, mediana: Double, moda: Int?) {
    // Calcular la media
    let media = Double(array.reduce(0, +)) / Double(array.count)
    
    // Calcular la mediana
    let sortedArray = array.sorted()
    let mediana: Double
    if array.count % 2 == 0 {
        mediana = Double(sortedArray[array.count / 2 - 1] + sortedArray[array.count / 2]) / 2.0
    } else {
        mediana = Double(sortedArray[array.count / 2])
    }
    
    // Calcular la moda
    var modaCount: [Int: Int] = [:]
    for num in array {
        modaCount[num, default: 0] += 1
    }
    let moda = modaCount.max { $0.1 < $1.1 }?.key

    return (media, mediana, moda)
}

// Prueba de la función calcularEstadisticas con un array de ejemplo
let arrayEjemplo = [1, 2, 2, 3, 4, 5, 5, 5, 6, 7]
let estadisticas = calcularEstadisticas(array: arrayEjemplo)

print("La media del array es: \(estadisticas.media)")
print("La mediana del array es: \(estadisticas.mediana)")
if let moda = estadisticas.moda {
    print("La moda del array es: \(moda)")
} else {
    print("No hay moda en el array.")
}



