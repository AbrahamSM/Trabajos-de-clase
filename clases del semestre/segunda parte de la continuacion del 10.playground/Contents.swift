//: Playground - noun: a place where people can play

import Foundation

protocol Estudiar{
    var horas: Int{ get }
    func estudiar()
}

class Alumno: Estudiar{
    var horas: Int
    
    func estudiar(){
        print("Alumno estudiando")
    }
    
    init(horas: Int){
        self.horas = horas
        
    }
}

class Empleado: Estudiar{
    var horas: Int
    
    func estudiar(){
        print("Empleado estudiando")
    }
    
    init(horas: Int){
        self.horas = horas
        
    }
}

let julio = Alumno(horas: 2)
let luis = Empleado(horas: 4)

julio.estudiar()
luis.estudiar()

var listaEstudiosos: [Estudiar] = []

listaEstudiosos.append(julio)
listaEstudiosos.append(luis)

for item in listaEstudiosos{
    print(item)
}


