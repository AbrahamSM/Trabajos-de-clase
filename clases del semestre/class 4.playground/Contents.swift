//: Playground - noun: a place where people can play

import UIKit

//: Optionals

var variable: String? //Con el signo podemos manejar nil

variable = nil

var nombre = variable ?? "nobody" //Optional coadecente

//: Collections
//: Arrays

var alumnos = ["Laura", "Juan", "Pedro"]
var profesores: [String] = []

var allCeros = Array(repeating: "Palabra", count: 10)
alumnos.isEmpty

if alumnos.count < 2{
    print("No hay muchios alumnos")
}else{
    print(("Suficientes alumnos"))
}

var primerAlumno = alumnos.first
print(alumnos)
print(alumnos.last!) //Estamos forzando a desenvolver, aunque ni es lo correcto

if let ultimo = alumnos.first{
    print(ultimo)
}else{
    print("No hay alumno")
}

let ultimo = alumnos.first ?? "nobody"

print([0, 1, 2, 3].first as Any)

print("Este es un alumno \(alumnos[0])")

alumnos.contains("Laura")

alumnos.append("Julio")

alumnos += ["Pawis"]

print(alumnos)

alumnos.insert("Daniel", at: 4)
print(alumnos)

alumnos.removeLast()
print(alumnos)

alumnos.remove(at: 2)
print(alumnos)

for alumno in alumnos{
    print(alumno)
}

for (index, alumno) in alumnos.enumerated(){
    print("\(index) .- \(alumno)")
}

//Ejercicio que reciba de forma aleatoria 10 numeros
//Funcion que reciba el arreglo y haga la suma de todos los elementos
func sumarArreglo( arreglo:[Int]) -> Int{
    var total = 0
    for i in arreglo{
        total = total + i
        
    }
    return total
}

let numeros = [1, 2, 3, 4, 5, 5, 4, 3, 2, 1]

sumarArreglo(arreglo: numeros)

//: Diccionarios
//Son pares de valores que llevan llave y valor y a traves de una llave puedo obtener el valor del elemento
var diccionario = ["Laura":2, "Pedro":3, "Luis":4]
print(diccionario)

var pares: [String: Int] = [:] //Diccionaerio vacio

pares.reserveCapacity(10)

print(diccionario["Laura"] as Any)

diccionario.isEmpty
diccionario.count

var alumnoDic = [
    "nombre" : "Pawis",
    "edad" : "22",
    "sexo" : "femeninio",
    "origen" : "Tixtle"
]

alumnoDic.updateValue("ingenieria", forKey: "carrera")
print(alumnoDic)

alumnoDic["numCuenta"] = "123456789"
print(alumnoDic)

alumnoDic.updateValue("contaduria", forKey: "carrera")
print(alumnoDic)

alumnoDic["numCuenta"] = "987654321"
print(alumnoDic)

alumnoDic.removeValue(forKey: "numCuenta")
print(alumnoDic)

alumnoDic["carrera"] = nil
print(alumnoDic)

for (llave, valor) in alumnoDic{
    print("\(llave) -- \(valor)")
}

for llave in alumnoDic.keys{
    print("\(llave), ", terminator: "")
}
