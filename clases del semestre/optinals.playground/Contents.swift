//: Playground - noun: a place where people can play

import Foundation

var errorCode: Int?

errorCode = 100

//: Unwrapping optionals using !
print(errorCode! + 1)

errorCode = nil

//El optional es como una caja que se quedsa como optional ? hasta que lo abras
//Utilizando el signo ! para saber que es:
//  print(errorCode) - cerrado
//  print(errorCode!) - abierta

var authorName: String? = "Pawis"
var authorAge: Int?

var unwrappedName = authorName!
print("El autor es \(unwrappedName)")

authorName = "gil"
//Aqui marca un error por mal uso de !
//unwrappedName = authorName!
//print("El autor es \(unwrappedName)")

if let unwrappedAuthorName2 = authorName{
    print("El autor es \(unwrappedAuthorName2)")
}else{
    print("No hay autor")
}
