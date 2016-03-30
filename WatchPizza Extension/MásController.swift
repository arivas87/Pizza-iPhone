//
//  MásController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 30/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import WatchKit
import Foundation


class MásController: WKInterfaceController {
    
    var ingredientes: Ingredientes!
    
    @IBOutlet var switchJamón: WKInterfaceSwitch!
    @IBOutlet var switchPepperoni: WKInterfaceSwitch!
    @IBOutlet var switchPavo: WKInterfaceSwitch!
    @IBOutlet var switchSalchicha: WKInterfaceSwitch!
    @IBOutlet var switchAceituna: WKInterfaceSwitch!
    @IBOutlet var switchCebolla: WKInterfaceSwitch!
    @IBOutlet var switchPimiento: WKInterfaceSwitch!
    @IBOutlet var switchPiña: WKInterfaceSwitch!
    @IBOutlet var switchCampiñones: WKInterfaceSwitch!
    @IBOutlet var switchCarne: WKInterfaceSwitch!
    
    @IBOutlet var siguienteBotón: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        ingredientes = context as! Ingredientes
    }
    
    override func willActivate() {
        super.willActivate()
        
        switchJamón.setOn(ingredientes.más[0] ?? false)
        switchPepperoni.setOn(ingredientes.más[1] ?? false)
        switchPavo.setOn(ingredientes.más[2] ?? false)
        switchSalchicha.setOn(ingredientes.más[3] ?? false)
        switchAceituna.setOn(ingredientes.más[4] ?? false)
        switchCebolla.setOn(ingredientes.más[5] ?? false)
        switchPimiento.setOn(ingredientes.más[6] ?? false)
        switchPiña.setOn(ingredientes.más[7] ?? false)
        switchCampiñones.setOn(ingredientes.más[8] ?? false)
        switchCarne.setOn(ingredientes.más[9] ?? false)
        
        let ingredientesActivos = ingredientes.más.filter{$0.1 == true}
        
        siguienteBotón.setEnabled(ingredientesActivos.count > 0)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pulsoSiguiente() {
        let context = ingredientes
        pushControllerWithName("resumen", context: context)
    }

    @IBAction func pulsoJamón(value: Bool) {
        ingredientes.más[0] = value
        
        bloqueoBotones(switchJamón, posición: 0)
    }
    
    @IBAction func pulsoPepperoni(value: Bool) {
        ingredientes.más[1] = value
        
        bloqueoBotones(switchPepperoni, posición: 1)
    }
    
    @IBAction func pulsoPavo(value: Bool) {
        ingredientes.más[2] = value
        
        bloqueoBotones(switchPavo, posición: 2)
    }
    
    @IBAction func pulsoSalchicha(value: Bool) {
        ingredientes.más[3] = value
        
        bloqueoBotones(switchSalchicha, posición: 3)
    }
    
    @IBAction func pulsoAceituna(value: Bool) {
        ingredientes.más[4] = value
        
        bloqueoBotones(switchAceituna, posición: 4)
    }
    
    @IBAction func pulsoCebolla(value: Bool) {
        ingredientes.más[5] = value
        
        bloqueoBotones(switchCebolla, posición: 5)
    }

    @IBAction func pulsoPimiento(value: Bool) {
        ingredientes.más[6] = value
        
        bloqueoBotones(switchPimiento, posición: 6)
    }
    
    @IBAction func pulsoPiña(value: Bool) {
        ingredientes.más[7] = value
        
        bloqueoBotones(switchPiña, posición: 7)
    }
    
    @IBAction func pulsoChampiñones(value: Bool) {
        ingredientes.más[8] = value
        
        bloqueoBotones(switchCampiñones, posición: 8)
    }
    
    @IBAction func pulsoCarne(value: Bool) {
        ingredientes.más[9] = value
        
        bloqueoBotones(switchCarne, posición: 9)
    }
    
    func bloqueoBotones(botón: WKInterfaceSwitch, posición: Int) {
        let ingredientesActivos = ingredientes.más.filter{$0.1 == true}
        if ingredientesActivos.count > 5 {
            botón.setOn(false)
            ingredientes.más[posición] = false
        }

        siguienteBotón.setEnabled(ingredientesActivos.count > 0)
    }
}
