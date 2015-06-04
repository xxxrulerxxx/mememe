//
//  textFiieldDelegate.swift
//  MemeMe
//
//  Created by Neal Rollins on 5/24/15.
//  Copyright (c) 2015 Neal Rollins. All rights reserved.
//

import Foundation
import UIKit

class MyTextFieldDelegate : NSObject, UITextFieldDelegate {
    

    
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true;
    }
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var colorsInTheText = [UIColor]()
        var newText: NSString
        
        // Construct the text that will be in the field if this change is accepted
        newText = textField.text
        newText = newText.stringByReplacingCharactersInRange(range, withString: string)
        
        // For each dictionary entry in translations, pull out a string to search for
        
        
        return true
    }
}
