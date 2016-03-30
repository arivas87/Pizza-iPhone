//
//  MásViewController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 23/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import UIKit

class MásViewController: UIViewController {

    var ingredientes: Ingredientes!
    var count = 0
    
    @IBOutlet var switches: [UISwitch]!
    @IBOutlet weak var botonSiguiente: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for botón in switches {
            botón.setOn(ingredientes.más[botón.tag]!, animated: false)
            
            if ingredientes.más[botón.tag]! {
                count += 1
            }
        }
        
        if count < 1 {
            botonSiguiente.enabled = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as! ResumenViewController
        vc.ingredientes = ingredientes
    }
    
    @IBAction func cambioSelección(sender: UISwitch) {

        count = sender.on ? count + 1 : count - 1
        
        if count == 5 {
            for botón in switches {
                if !botón.on {
                    botón.userInteractionEnabled = false
                }
            }
        } else {
            for botón in switches {
                botón.userInteractionEnabled = true
            }
        }
        
        ingredientes.más[sender.tag] = sender.on
        
        if count > 0 {
            botonSiguiente.enabled = true
        } else {
            botonSiguiente.enabled = false
        }
    }
}