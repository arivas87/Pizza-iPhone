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
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        ingredientes = context as! Ingredientes
    }
    
    override func willActivate() {
        super.willActivate()
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
    }
    
    @IBAction func pulsoPepperoni(value: Bool) {
    }
    
    @IBAction func pulsoPavo(value: Bool) {
    }
    
    @IBAction func pulsoSalchicha(value: Bool) {
    }
    
    @IBAction func pulsoAceituna(value: Bool) {
    }
    
    @IBAction func pulsoCebolla(value: Bool) {
    }

    @IBAction func pulsoPimiento(value: Bool) {
    }
    
    @IBAction func pulsoPiña(value: Bool) {
    }
    
    @IBAction func pulsoChampiñones(value: Bool) {
    }
    
    @IBAction func pulsoCarne(value: Bool) {
    }
}
