//: Playground - noun: a place where people can play

import UIKit

/*
 Ejercicio 4
 Un velocimetro de un automóvil digital
 Daniel Zanabria González
 danielzglez
 */

enum Velocidades : Int {
  case Apagado = 0
  case VelocidadBaja = 20
  case VelocidadMedia = 50
  case VelocidadAlta = 120
  
  init(velocidadInicial : Velocidades) {
    
    self = velocidadInicial
    
  }
  
}

class Auto {
  var velocidad : Velocidades
  
  init(velocidadInicial : Velocidades){
    self.velocidad = velocidadInicial
    
  }
  
  func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
    
    var velActual = 0
    var velEnCadena = "Apagado"
    
    
    if velocidad.rawValue == 0 {
      velocidad = Velocidades.VelocidadBaja
      velActual = 20
      velEnCadena = "Velocidad baja"
    }else if velocidad.rawValue == 20 {
      velocidad = Velocidades.VelocidadMedia
      velActual = 50
      velEnCadena = "Velocidad media"
    }else if velocidad.rawValue == 50 {
      velocidad = Velocidades.VelocidadAlta
      velActual = 120
      velEnCadena = "Velocidad alta"
    }else if velocidad.rawValue == 120 {
      velocidad = Velocidades.VelocidadMedia
      velActual = 50
      velEnCadena = "Velocidad media"
    }
    
    let velocimetro = (velActual , velEnCadena)
    
    return velocimetro
    
  }
  
}

var auto = Auto(velocidadInicial: Velocidades.Apagado)
var resultadoVelocimetro = (0, "Apagado")

for i in 0..<20{
  if i == 0{
    
    print("\(resultadoVelocimetro)")
    
  }else{
    
    resultadoVelocimetro = auto.cambioDeVelocidad()
    
    //print("\(resultadoVelocimetro.actual), \(resultadoVelocimetro.velocidadEnCadena)")
    
    print("\(resultadoVelocimetro)")
    
  }
}

auto.velocidad
