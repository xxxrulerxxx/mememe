//
//  MyNavagationController.swift
//  MemeMe
//
//  Created by Neal Rollins on 5/27/15.
//  Copyright (c) 2015 Neal Rollins. All rights reserved.
//

import Foundation
import UIKit

class MyNavagationController: UINavigationController, UINavigationControllerDelegate {
    
    var myDelagate : UINavigationControllerDelegate!
    
    
    override func viewDidLoad() {
        myDelagate = self
    }
    
    func navigationController(navigationController: UINavigationController,
        willShowViewController viewController: UIViewController,
        animated: Bool){
            
            
            
            viewController.viewWillAppear(animated)
    }
    
    
}
