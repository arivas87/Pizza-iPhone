//
//  MasaController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 29/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import WatchKit
import Foundation


class MasaController: WKInterfaceController {

    @IBOutlet var masaPicker: WKInterfacePicker!
    
    var ingredientes: Ingredientes!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        ingredientes = context as! Ingredientes
    }
    
    override func willActivate() {
        super.willActivate()
        
        var pickerItems = [WKPickerItem]()
        for tamaños in 0...Masa.count - 1 {
            let pickerItem = WKPickerItem()
            pickerItem.title = Masa(rawValue: tamaños)?.description
            pickerItems.append(pickerItem)
        }
        
        masaPicker.setItems(pickerItems)
        masaPicker.setSelectedItemIndex(ingredientes.masa.rawValue)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pulsoSiguiente() {
        //pushControllerWithName("masa", context: nil)
    }
    
    @IBAction func cambiaMasa(value: Int) {
        ingredientes.masa = Masa(rawValue: value)!
    }

}
