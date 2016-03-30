//
//  QuesoController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 30/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import WatchKit
import Foundation


class QuesoController: WKInterfaceController {

    @IBOutlet var quesoPicker: WKInterfacePicker!
    
    var ingredientes: Ingredientes!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        ingredientes = context as! Ingredientes
    }
    
    override func willActivate() {
        super.willActivate()
        
        var pickerItems = [WKPickerItem]()
        for quesos in 0...Queso.count - 1 {
            let pickerItem = WKPickerItem()
            pickerItem.title = Queso(rawValue: quesos)?.description
            pickerItems.append(pickerItem)
        }
        
        quesoPicker.setItems(pickerItems)
        quesoPicker.setSelectedItemIndex(ingredientes.tamaño.rawValue)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pulsoSiguiente() {
        let context = ingredientes
        pushControllerWithName("más", context: context)
    }
    
    @IBAction func cambiaQueso(value: Int) {
        ingredientes.queso = Queso(rawValue: value)!
    }

}
