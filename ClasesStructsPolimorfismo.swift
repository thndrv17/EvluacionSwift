import Foundation
// Definición del protocolo Empleado con el método calcularSalario
protocol Empleado {
    func calcularSalario() -> Double
}

// Implementación de la clase EmpleadoBase que conforma al protocolo Empleado
class EmpleadoBase: Empleado {
    var salarioBase: Double
    
    init(salarioBase: Double) {
        self.salarioBase = salarioBase
    }
    
    func calcularSalario() -> Double {
        return salarioBase
    }
}

// Implementación de la estructura EmpleadoContrato que conforma al protocolo Empleado
struct EmpleadoContrato: Empleado {
    var horasTrabajadas: Int
    var tarifaHora: Double
    
    func calcularSalario() -> Double {
        return Double(horasTrabajadas) * tarifaHora
    }
}

// Función que acepta un array de Empleado y calcula el salario total de todos los empleados
func calcularSalarioTotal(empleados: [Empleado]) -> Double {
    var salarioTotal = 0.0
    
    // Iterar sobre todos los empleados y sumar sus salarios
    for empleado in empleados {
        salarioTotal += empleado.calcularSalario()
    }
    
    return salarioTotal
}

// Crear instancias de EmpleadoBase y EmpleadoContrato
let empleadoBase = EmpleadoBase(salarioBase: 3000.0)
let empleadoContrato = EmpleadoContrato(horasTrabajadas: 40, tarifaHora: 20.0)

// Crear un array de Empleado con las instancias creadas
let empleados: [Empleado] = [empleadoBase, empleadoContrato]

// Calcular el salario total de todos los empleados en el array
let salarioTotal = calcularSalarioTotal(empleados: empleados)

// Imprimir el resultado del salario total
print("El salario total de todos los empleados es: \(salarioTotal)")

