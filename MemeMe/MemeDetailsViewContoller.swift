//
//  MemeDetailsViewContoller.swift
//  MemeMe
//
//  Created by Neal Rollins on 5/31/15.
//  Copyright (c) 2015 Neal Rollins. All rights reserved.
//



import UIKit

class MemeDetailsViewContoller: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    var meme: Meme!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBarController?.tabBar.hidden = true
        
        self.imageView!.image = self.meme.memedImage
        
        
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.hidden = false
    }
    
        
    
}