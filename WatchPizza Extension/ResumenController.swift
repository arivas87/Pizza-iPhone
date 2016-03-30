//
//  ResumenController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 30/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import WatchKit
import Foundation


class ResumenController: WKInterfaceController {

    var ingredientes: Ingredientes!
    
    @IBOutlet var tamañoLabel: WKInterfaceLabel!
    @IBOutlet var masaLabel: WKInterfaceLabel!
    @IBOutlet var quesoLabel: WKInterfaceLabel!
    @IBOutlet var másLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        ingredientes = context as! Ingredientes
    }

    override func willActivate() {
        super.willActivate()
        
        tamañoLabel.setText(ingredientes.tamaño.description)
        masaLabel.setText(ingredientes.masa.description)
        quesoLabel.setText(ingredientes.queso.description)
        
        var label: String = ""
        for ingrediente in ingredientes.más {
            if ingrediente.1 {
                label += "\(MAS[ingrediente.0]) - "
            }
        }
        label.removeAtIndex(label.endIndex.predecessor())
        label.removeAtIndex(label.endIndex.predecessor())
        label.removeAtIndex(label.endIndex.predecessor())
        
        másLabel.setText(label)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func pulsoConfirmar() {
        // TODO: Diálogo de Okey y pasar a la primera vista
    }
}
