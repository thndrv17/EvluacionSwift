import Foundation
// Función para sumar dos matrices
func sumaMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    // Validar que las matrices tengan las mismas dimensiones
    guard matrizA.count == matrizB.count && matrizA.first?.count == matrizB.first?.count else {
        return nil
    }
    
    var resultado: [[Int]] = []
    
    for i in 0..<matrizA.count {
        var filaResultado: [Int] = []
        
        for j in 0..<matrizA[i].count {
            filaResultado.append(matrizA[i][j] + matrizB[i][j])
        }
        
        resultado.append(filaResultado)
    }
    
    return resultado
}

// Función para multiplicar dos matrices
func multiplicarMatrices(matrizA: [[Int]], matrizB: [[Int]]) -> [[Int]]? {
    // Validar que las dimensiones de las matrices sean compatibles para la multiplicación
    guard matrizA.first?.count == matrizB.count else {
        return nil
    }
    
    var resultado: [[Int]] = Array(repeating: Array(repeating: 0, count: matrizB[0].count), count: matrizA.count)
    
    for i in 0..<matrizA.count {
        for j in 0..<matrizB[0].count {
            for k in 0..<matrizB.count {
                resultado[i][j] += matrizA[i][k] * matrizB[k][j]
            }
        }
    }
    
    return resultado
}

// Matrices de ejemplo
let matrizA = [[1, 2], [3, 4]]
let matrizB = [[5, 6], [7, 8]]

// Prueba de la función sumaMatrices
if let suma = sumaMatrices(matrizA: matrizA, matrizB: matrizB) {
    print("La suma de matrices es:")
    for fila in suma {
        print(fila)
    }
} else {
    print("Las matrices no tienen las mismas dimensiones para sumar.")
}

// Prueba de la función multiplicarMatrices
if let producto = multiplicarMatrices(matrizA: matrizA, matrizB: matrizB) {
    print("El producto de matrices es:")
    for fila in producto {
        print(fila)
    }
} else {
    print("Las dimensiones de las matrices no son compatibles para multiplicar.")
}


