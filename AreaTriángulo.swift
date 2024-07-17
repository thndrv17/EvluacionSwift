import Foundation
// Definición de la función calcularAreaTriangulo que acepta los lados a, b, c y devuelve el área del triángulo o nil si los lados no forman un triángulo válido
func calcularAreaTriangulo(a: Double, b: Double, c: Double) -> Double? {
    // Validar si los lados forman un triángulo válido
    if a + b > c && a + c > b && b + c > a {
        // Calcular el semiperímetro
        let s = (a + b + c) / 2
        
        // Calcular el área utilizando la fórmula de Herón
        let area = sqrt(s * (s - a) * (s - b) * (s - c))
        
        return area
    } else {
        return nil
    }
}

// Llamada a la función calcularAreaTriangulo con valores de prueba
if let areaTriangulo = calcularAreaTriangulo(a: 3.0, b: 4.0, c: 5.0) {
    print("El área del triángulo es: \(areaTriangulo)")
} else {
    print("Los lados no forman un triángulo válido.")
}



