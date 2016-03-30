//
//  TamañoController.swift
//  WatchPizza Extension
//
//  Created by Arturo Rivas on 29/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import WatchKit
import Foundation


class TamañoController: WKInterfaceController {

    @IBOutlet var tamañoPicker: WKInterfacePicker!
    
    var ingredientes = Ingredientes()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        super.willActivate()
        
        var pickerItems = [WKPickerItem]()
        for tamaños in 0...Tamaño.count - 1 {
            let pickerItem = WKPickerItem()
            pickerItem.title = Tamaño(rawValue: tamaños)?.description
            pickerItems.append(pickerItem)
        }
        
        tamañoPicker.setItems(pickerItems)
        tamañoPicker.setSelectedItemIndex(ingredientes.tamaño.rawValue)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pulsoSiguiente() {
        let context = ingredientes
        pushControllerWithName("masa", context: context)
    }

    @IBAction func cambiaTamaño(value: Int) {
        ingredientes.tamaño = Tamaño(rawValue: value)!
    }
}
