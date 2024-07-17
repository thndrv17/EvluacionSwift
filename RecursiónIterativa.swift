import Foundation
// Función recursiva para calcular la suma de los primeros N números naturales
func sumaRecursiva(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else {
        return n + sumaRecursiva(n - 1)
    }
}

// Función iterativa para calcular la suma de los primeros N números naturales
func sumaIterativa(_ n: Int) -> Int {
    var suma = 0
    for i in 1...n {
        suma += i
    }
    return suma
}

// Valor de ejemplo
let n = 5

// Prueba de ambas funciones con el valor de ejemplo
let sumaRecursivaResultado = sumaRecursiva(n)
let sumaIterativaResultado = sumaIterativa(n)

print("La suma de los primeros \(n) números naturales es (recursiva): \(sumaRecursivaResultado)")
print("La suma de los primeros \(n) números naturales es (iterativa): \(sumaIterativaResultado)")


