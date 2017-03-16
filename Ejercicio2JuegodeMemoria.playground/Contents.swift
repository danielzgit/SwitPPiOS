//: Playground - noun: a place where people can play

import UIKit

/*
 Reto número 2 curso Swift Programar para iOS
 Estudiante: Daniel Zanabria González
 usuario: danielzglez@yahoo.com.mx
 */

//imprimo los números del 0 al 100
for i in 0...100{
  //reviso si el número es par
  if(i%2==0){
    //el numero es par
    print("\(i) es par")
  }else{
    //el numero es impar
    print("\(i) es impar")
  }
  //reviso si el número es divisible entre 5
  if(i%5==0){
    //es divisible entre 5
    print("\(i) Bingo!!!")
  }
  //reviso si se encuentra entre 30 y 40
  if(i>=30 && i<=40){
    //se encuentra en el rango 30-40
    print("\(i) Viva Swift!!!")
  }
}