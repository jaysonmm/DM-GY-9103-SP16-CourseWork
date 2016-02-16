//
//  Conve   rsionViewController.swift
//  WorldTrotte
//
//  Created by Jayson Miller on 2/9/16.
//  Copyright © 2016 Jayson Miller. All rights reserved.
//

import Foundation
import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var textField: UITextField!
    
    var farenheitValue: Double?{
        didSet {
            updateCelsiusLabel()
        }
    }
    
    
    var celsiusValue: Double? {
        if let value = farenheitValue {
            return(value - 32) * (5/9)
        }
        else {
            return nil
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange,
        replacementString string: String) -> Bool {
        print("Current text: \(textField.text)")
        print("Replacement text: \(string)")
            return true
            
            let existingTextHasDecimalSeparator = textField.text?.rangeOfString(".")
            
                let replacementTextHasDecimalSeparator = string.rangeOfString(".")
            
            if existingTextHasDecimalSeparator != nil &&
            replacementTextHasDecimalSeparator != nil {
                return false
            }
            else {
                return true
            }
    }
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = "\(value)"
            //celsiusLabel.text = numberFormatter
        //ringFromNumber(value)
        }
        else {
            celsiusLabel.text = "???"
        }
    }
    
    @IBAction func farenheitFieldEditingChanged(textField: UITextField) {
        
    
        
        celsiusLabel.text = textField.text
        
        if let text = textField.text where !text.isEmpty {
            celsiusLabel.text = text
        }
        else {
            celsiusLabel.text = "???"
        }
        if let text = textField.text, value = Double(text) {
            farenheitValue = value
        }
        else {
         farenheitValue = nil
        }
    }
   
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        //Always call the superimplementation of viewDidLoad
        super.viewDidLoad()
        
        print("ConversionViewController loaded its view.")
    }
    
}
