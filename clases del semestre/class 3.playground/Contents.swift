//: Funciones

func nombreFuncion(){
    print("Hola funcion")
}

nombreFuncion()

//Las funciones pueden regresar tuplas
//let variable = nombreFuncion()     para que no de lata esta comentado

//: Funcion con parametro
func pasaParametro(valor: Int){
    print("Usted paso el parametro: \(valor)")
}

pasaParametro(valor: 10)

func pasaParametro2(_ valor: Int){
    print("El parametro es \(valor)")
}

pasaParametro2(20)

//Cambiar el nombre al parametro

func pasaParametro3(param valor:Int){
    print("El parametro es \(valor)")
}

pasaParametro3(param: 30)

//: Regresando valores
func multiplicaA(_ x: Int, por y: Int) -> Int{
    return x * y
}

var loquesea = multiplicaA(3, por: 2)

func divideA(x: Int, entre y: Int) -> (resultado: Int, residuo:Int){
    return (x / y, x % y)
}

let resultados = divideA(x: 14, entre: 4)
print("El resultado es: \(resultados.resultado)")

//: Quitando lo constante de las variables con "inout"
func incrementaImprime(_ valor: inout Int){  //Fue para pasarle una referencia
    valor += 1
    print(valor)
}

var param = 3
incrementaImprime(&param)
print(param)

//: Overloading - Sobrecargargando

func getValue() -> Int{
    return 14
}

//: Asignando fucniones a variables
func getValue() -> String{
    return "Dia del amor y la amistad"
}

func suma(_ a: Int, _ b: Int) -> Int{
    return a + b
}

var pepito = suma
pepito(3,4)

//: Tierra sin retorno, casa nerd, cosa bonita
//func noReturn() -> Never{
//    while true{
//
//    }
//}

//: Tips

for index in stride(from: 10, to: 40, by: 4){
    print(index)
}

for index in stride(from: 10, through: 40, by: 4){
    print(index)
}

//: Primos

func isPrime(_ n: Int) -> Bool{
    var flag = true
    for i in 2..<n{
        if n % i == 0 {
            flag = false
            break
        }
    }
    return flag
}

isPrime(9)
isPrime(7)
isPrime(23)
isPrime(100)
isPrime(117)



