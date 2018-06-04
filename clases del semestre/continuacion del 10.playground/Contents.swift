//: Playground - noun: a place where people can play

import Foundation

class Persona{
    var nombre: String
    
    init(nombre: String) {
        self.nombre = nombre
    }
}

class Empleado: Persona{
    var sueldoBase: Double{
        willSet{
            print("Valor nuevo a ser modificado por \(newValue)")
        }
        
        didSet{
           print("Valor anterior a ser modificado \(oldValue)")
        }
    }
    
    var comisiones: Double{
        get{
            return 0.00
        }
        
        set{
            self.sueldoBase = self.sueldoBase + newValue
        }
        
    }
    
    override init(nombre: String){
        self.sueldoBase = 5000.00
        super.init(nombre: nombre)
        
    }
}


let godin = Empleado(nombre: "Godin")
godin.sueldoBase

godin.comisiones = 10000.00
godin.sueldoBase



