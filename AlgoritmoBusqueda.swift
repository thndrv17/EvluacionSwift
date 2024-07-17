import Foundation
class Grafo {
    var listaAdyacencia: [Int: [Int]] = [:]
    
    func añadirArista(_ origen: Int, _ destino: Int) {
        if listaAdyacencia[origen] == nil {
            listaAdyacencia[origen] = []
        }
        listaAdyacencia[origen]?.append(destino)
    }
    
    func dfs(_ inicio: Int) -> [Int] {
        var visitados: Set<Int> = []
        var recorrido: [Int] = []
        dfsRecursivo(inicio, &visitados, &recorrido)
        return recorrido
    }
    
    private func dfsRecursivo(_ nodo: Int, _ visitados: inout Set<Int>, _ recorrido: inout [Int]) {
        visitados.insert(nodo)
        recorrido.append(nodo)
        
        if let vecinos = listaAdyacencia[nodo] {
            for vecino in vecinos {
                if !visitados.contains(vecino) {
                    dfsRecursivo(vecino, &visitados, &recorrido)
                }
            }
        }
    }
}

// Ejemplo de grafo y prueba de la función dfs
let grafo = Grafo()
grafo.añadirArista(0, 1)
grafo.añadirArista(0, 2)
grafo.añadirArista(1, 2)
grafo.añadirArista(2, 0)
grafo.añadirArista(2, 3)
grafo.añadirArista(3, 3)

let recorridoDFS = grafo.dfs(2)
print("Recorrido DFS desde el nodo 2: \(recorridoDFS)")

