import Foundation
class Coche {
    var marca: String
    var modelo: String
    var año: Int
    
    init(marca: String, modelo: String, año: Int) {
        self.marca = marca
        self.modelo = modelo
        self.año = año
    }
    
    func describir() -> String {
        return "Este coche es un \(marca) \(modelo) del año \(año)."
    }
}

// Crear una instancia de Coche
let miCoche = Coche(marca: "Toyota", modelo: "Corolla", año: 2022)

// Llamar al método describir
let descripcion = miCoche.describir()
print(descripcion)


