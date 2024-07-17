import Foundation
struct Rectangulo {
    var ancho: Double
    var alto: Double
    
    func area() -> Double {
        return ancho * alto
    }
    
    func perimetro() -> Double {
        return 2 * (ancho + alto)
    }
}

// Crear una instancia de Rectángulo
let miRectangulo = Rectangulo(ancho: 5.0, alto: 3.0)

// Calcular y mostrar el área y el perímetro
let area = miRectangulo.area()
let perimetro = miRectangulo.perimetro()

print("El área del rectángulo es: \(area)")
print("El perímetro del rectángulo es: \(perimetro)")

