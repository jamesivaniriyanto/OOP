//
//  CoffeeMachine.swift
//  OOP
//
//  Created by James Ivan Iriyanto on 15/05/19.
//  Copyright © 2019 James Ivan Iriyanto. All rights reserved.
//

import Foundation

class CoffeeMachine : Machine {
    
    var numOfBean : Int = 100
    var numOfMilk : Int
    var Brand : String
    
    init(milk : Int, brand : String) {
        numOfMilk = milk
        self.Brand = brand
    }

    func addMilk(milk : Int){
        numOfMilk = numOfMilk + milk
    }
    
    func addBeans (beans : Int){
        numOfBean = numOfBean + beans
    }
    
    func makeCoffee(){
        numOfBean = numOfBean - 3
        numOfMilk = numOfMilk - 2
    }
    
}

