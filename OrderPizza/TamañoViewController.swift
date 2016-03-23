//
//  TamañoViewController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 23/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import UIKit

class TamañoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tamañoPicker: UIPickerView!
    
    var ingredientes = Ingredientes()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        tamañoPicker.selectRow(ingredientes.tamaño.rawValue, inComponent: 0, animated: true)
    }
    

    // MARK: - UIPickerViewDataSource
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Tamaño.count
    }
    
    // MARK: - UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Tamaño(rawValue: row)?.description;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ingredientes.tamaño = Tamaño(rawValue: row)!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as! MasaViewController
        vc.ingredientes = ingredientes
    }
}
