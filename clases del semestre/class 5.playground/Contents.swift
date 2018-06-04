//: Playground - noun: a place where people can play

import UIKit  //ALV Alabanza Luz y Valor

//Los conjuntos no permiten elementos repetidos
//: Closures
//A diferencia de una funcion

var miniClosure: (Int, Int) -> Int //Definicion del closure
var multiplicaClosure: (Int, Int) -> Int

miniClosure = { (a:Int, b:Int) -> Int in //Con "in" es un closure
    return a + b
}

miniClosure(3, 2)

multiplicaClosure = { (a: Int, b: Int) -> Int in
    return a * b
}

func operacion(_ closure:(Int, Int) -> Int, a: Int, b: Int){
    print(closure(a,b))
}

operacion(miniClosure, a:10, b: 50)
operacion(multiplicaClosure, a: 20, b: 50)

miniClosure = { (a, b) in
    a + b
}

miniClosure = {
    $0 + $1
}

var noReturnClosure: () -> Void = { //los closures deben de indicar cuando no van a regresar nada
    print("No regresa nada")
}

var contador = 0

var incrementar = {
    contador += 1
}

incrementar()
incrementar()
incrementar()
incrementar()
incrementar()

print(contador)

func contadorClosure() -> () -> Int{
    var contador = 0
    let incrementaClosure: () -> Int = {
        contador += 1
        return contador
    }
    return incrementaClosure
}

let contador1 = contadorClosure()
let contador2 = contadorClosure()

contador1()
contador1()
contador1()
contador2()
contador2()

var names = ["EEEEE", "III", "AA", "OOOOOOOOOO", "ZZZ", "KKKKKKKKK"]
names.sorted()

print(names.sorted{
    $0.count < $1.count
})

//: Usando closures para iterar sobre collections
let numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numeros.forEach{ //Recorremos el arreglo
    print("\($0)")
}

let precios = [1.5, 2.3, 5.8, 10.5, 8.19, 2.33, 7.5]

let preciosCaros = precios.filter{
    return $0 > 5
}.sorted()

print(preciosCaros)

let preciosDescuento = precios.map{
    return $0 * 0.8
}

print(preciosDescuento.sorted())

let userInout = ["0", "11", "Hola", "42"]
let numeros1 = userInout.flatMap{
    Int($0)
}
print(numeros1)

let suma = precios.reduce(0){
    return $0 + $1
}

print(suma)


let animalitos = ["🦆":3, "🦄":1, "🐭":10, "🐿":6]

let todosLosAnimales = animalitos.reduce(into: []){
    (result, this: (key: String, value: Int)) in
    for _ in 0 ..< this.value{
        result.append(this.key)
    }
}
print(todosLosAnimales)

var animalesEliminados = todosLosAnimales.dropFirst(10)
print(animalesEliminados)

animalesEliminados = todosLosAnimales.dropLast(2)
print(animalesEliminados)

todosLosAnimales.suffix(2)
todosLosAnimales.prefix(3)
