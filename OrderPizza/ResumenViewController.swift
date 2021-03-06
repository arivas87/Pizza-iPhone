//
//  ResumenViewController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 23/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import UIKit

class ResumenViewController: UIViewController {

    var ingredientes: Ingredientes!
    
    @IBOutlet weak var tamañoLabel: UILabel!
    @IBOutlet weak var masaLabel: UILabel!
    @IBOutlet weak var quesoLabel: UILabel!
    @IBOutlet weak var másLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tamañoLabel.text = ingredientes.tamaño.description
        masaLabel.text = ingredientes.masa.description
        quesoLabel.text = ingredientes.queso.description
        
        var label: String = ""
        for ingrediente in ingredientes.más {
            if ingrediente.1 {
                label += "\(MAS[ingrediente.0]) - "
            }
        }
        label.removeAtIndex(label.endIndex.predecessor())
        label.removeAtIndex(label.endIndex.predecessor())
        label.removeAtIndex(label.endIndex.predecessor())
        
        másLabel.text = label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pulsoConfirmar(sender: AnyObject) {
        let alert = UIAlertController(title: "Oido cocina", message: "Su pedido ha sido recibido. Muchas gracias.", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .Default, handler: { alert in
            self.performSegueWithIdentifier("volverAlInicio", sender: nil)
        }))
        
        presentViewController(alert, animated: true, completion: nil)
    }
}
