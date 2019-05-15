//
//  ViewController.swift
//  OOP
//
//  Created by James Ivan Iriyanto on 15/05/19.
//  Copyright © 2019 James Ivan Iriyanto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coffeelabel: UILabel!
    @IBOutlet weak var milklabel: UILabel!
    
    var coffeeMachine : CoffeeMachine!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coffeeMachine = CoffeeMachine(milk: 200, brand: "TJam")
        print("Jumlah beans : \(coffeeMachine.numOfBean), jumlah milk : \(coffeeMachine.numOfMilk)")
        updateLabel()
        
        print(coffeeMachine.volt)
        coffeeMachine.runMotor()
    }
   
    @IBAction func addcoffee(_ sender: Any) {
        coffeeMachine.addBeans(beans: 100)
        updateLabel()
    }
    
    
    @IBAction func addmilk(_ sender: Any) {
        coffeeMachine.addMilk(milk: 50)
        updateLabel()
    }
    
    
    @IBAction func makecoffee(_ sender: Any) {
        coffeeMachine.makeCoffee()
        updateLabel()
    }
    
    func updateLabel(){
        coffeelabel.text = String(coffeeMachine.numOfBean)
        milklabel.text = String(coffeeMachine.numOfMilk)
    }
}

