//: Playground - noun: a place where people can play

import Foundation

//: String

let cadena = "Hola mundo feliz"

for caracter in cadena{
    print( caracter)
}  //Es una colleccion

cadena.count
cadena.isEmpty

//let letraA = cadena[3]

let cafeNormal = "café"
let cafeCombinado = "cafe\u{0301}"

cafeNormal.count
cafeCombinado.count

cafeNormal.unicodeScalars.count
cafeCombinado.unicodeScalars.count

for codigo in cafeCombinado.unicodeScalars{
    print(codigo.value)
}

let resultado = cadena.reversed()
print(resultado)

let espacioIndex = cadena.index(of: " ")!
print(espacioIndex)

let primeraPalabra = cadena[cadena.startIndex..<espacioIndex]
print(primeraPalabra)
