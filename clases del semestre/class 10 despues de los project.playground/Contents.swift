//: Playground - noun: a place where people can play

import UIKit

class Alumno{
    var nombre: String //= ""
    var edad: Int //= 0
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
    init() {
        self.nombre = "nobody"
        self.edad = 18
    }
    
    init?(edad: Int) {
        if edad < 18{
            return nil
        }
        self.edad = edad
        self.nombre = "usuario"
    }
    
    deinit {
        print("\(self.nombre) esta muriendo lentamente...")
    }
}

let parra = Alumno(nombre: "Parra", edad: 20)
let daniel = Alumno(nombre: "Daniel", edad: 22)
let cris = Alumno()
parra.nombre = "George"
daniel.edad = 26
dump(cris)

cris.nombre = "Cris"
dump(cris)

if let juanito = Alumno(edad: 18){
    print("Juanito creado")
}else{
    print("Juanito no se logro")
}



