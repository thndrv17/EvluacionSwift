import Foundation
// Definición de la función calcularAreaYPerimetro que acepta ancho y alto y devuelve una tupla con área y perímetro
func calcularAreaYPerimetro(ancho: Double, alto: Double) -> (area: Double, perimetro: Double) {
    // Cálculo del área y perímetro del rectángulo
    let area = ancho * alto
    let perimetro = 2 * (ancho + alto)
    
    return (area, perimetro)
}

// Llamada a la función calcularAreaYPerimetro con valores de prueba
let resultado = calcularAreaYPerimetro(ancho: 5.0, alto: 3.0)

// Impresión de los resultados
print("El área del rectángulo es: \(resultado.area)")
print("El perímetro del rectángulo es: \(resultado.perimetro)")


