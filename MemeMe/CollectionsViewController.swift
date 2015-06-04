//
//  collectionsViewController.swift
//  MemeMe
//
//  Created by Neal Rollins on 5/25/15.
//  Copyright (c) 2015 Neal Rollins. All rights reserved.
//

import Foundation
import UIKit


class MyCollectionsViewController: UIViewController, UICollectionViewDataSource {
    var memes: [Meme]!
    
    override func viewWillAppear(animated: Bool) {
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes
    }
    
    
    
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MemeCollectionViewCell", forIndexPath: indexPath) as! MemeCollectionViewCell
        
        let meme = self.memes[indexPath.row]
        
        
        
        cell.memeLabel?.text = meme.topText
        cell.memeImageView?.image = meme.memedImage
        cell.bottomLabel?.text  = meme.bottomText
        
        
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath:NSIndexPath)
    {
        let detailController = self.storyboard!.instantiateViewControllerWithIdentifier("detailVC") as! MemeDetailsViewContoller
        
        
        
        
        let meme = self.memes[indexPath.row]
        detailController.meme = meme
        
        self.navigationController?.pushViewController(detailController, animated: true)
        
        
        
        
        
        
        
        
        
    }
    
    
    @IBAction func dissMiss(sender: AnyObject) {
        
        
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    
        
    
    
    
}