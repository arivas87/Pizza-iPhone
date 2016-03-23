//
//  QuesoViewController.swift
//  OrderPizza
//
//  Created by Arturo Rivas on 23/3/16.
//  Copyright © 2016 Arturo Rivas. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {
    
    var ingredientes: Ingredientes!

    @IBOutlet weak var quesoPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        quesoPicker.selectRow(ingredientes.queso.rawValue, inComponent: 0, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - UIPickerViewDataSource
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Masa.count
    }
    
    // MARK: - UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Queso(rawValue: row)?.description;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ingredientes.queso = Queso(rawValue: row)!
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vc = segue.destinationViewController as! MásViewController
        vc.ingredientes = ingredientes
    }

}
