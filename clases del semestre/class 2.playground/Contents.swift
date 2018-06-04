//: Playground - noun: a place where people can play

import UIKit

var edad: Int = 20

edad += 1
edad -= 1

(2 > 3)
(3 > 2)
!(3 > 2)
!(true)
!(false)

(2 > 3) && (3 > 2)

//Estructuras de comparacion

if 8 % 2 == 0{
    print("Es par")
}else{
    print("Es impar")
}

// Operador ternario
let a = 5
let b = 10

let min = a < b ? a : b
//
// if a < b {
//   min = a
// } else{
//   min = b
// }

//Encapsulamiento de variables

//if a > b{
//    let max = a
//}else{
//    let max  = b
//}
//print(max)

//ciclo while
var sum = 1
while sum < 100 {
    sum += 1
}

repeat{
    sum += 2
}while sum < 1000

//: [Next][@next]

var fac = 1
var numero = 6

while numero >= 1{
    fac = fac * numero
    numero -= 1
}

print("El resultado es: \(fac)")

import Foundation

//control de flujo avanzado
let rango = 0...5
print(rango)

let medioRango = 0..<5

let count = 10
var suma = 0
for _ in 1...count{
    sum += 1
}

suma = 0
simplefor: for i in 1...count where i % 2 == 1{   //Etiquetador de operaciones
    sum += i
}



//Sentencias switch

let number = 10
switch number{
case 0:
    print("Cero")
default:
    print("No es cero")
}

switch number{
case 10:
    print("Es un diez")
default:
    break
}


let string = "perro"

switch string{
case "perro", "gato":
    print("Es un animalito de casa")
default:
    print("No es animalito de casa")
}

//Switch avanzado
let hourOfDay = 12
var timeOfDay = String

switch hourOfDay {
case 0...5:
    timeOfDay = "Es muy temprano"
case 6...11:
    timeOfDay = "Es dos, dos temprano"
case 12...16:
    timeOfDay = "Es tarde"
case 17...19:
    timeOfDay = "Es tarde-noche"
case 20...23:
    timeOfDay = "Ya es muy noche a dormir"
default:
    timeOfDay = "No es un horario valido"
}
print(timeOfDay)


switch number{
case _ where
}


