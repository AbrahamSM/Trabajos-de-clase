//: Playground - noun: a place where people can play

//Struct -- si y solo si no se requiere de herencia
//Class --
//Polimorfimos capacidad de responder de los objetos de varias formas a una funcion

import UIKit

struct Alumno{
    let numCuenta: String
    let nombre: String
    var edad: Int
    var carrera: String
}

class Profesor{
    let numTrabajador: Int
    let nombre: String
    
    init(nombre : String, numTrabajador: Int){
        self.nombre = nombre
        self.numTrabajador = numTrabajador
    }
}

var alumno = Alumno(numCuenta: "313225299", nombre: "Abraham", edad: 20, carrera: "Elec y Electro")

alumno.carrera = "Conta"


