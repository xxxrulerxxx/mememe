//
//  tableViewController.swift
//  MemeMe
//
//  Created by Neal Rollins on 5/25/15.
//  Copyright (c) 2015 Neal Rollins. All rights reserved.
//

import Foundation
import UIKit

class MyTableViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var memes: [Meme]!
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as! AppDelegate
        memes = appDelegate.memes
        
    }
    // MARK: Table View Data Source
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.memes.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let CellID = "MemeCell"
        
        let cell = tableView.dequeueReusableCellWithIdentifier(CellID, forIndexPath: indexPath) as! UITableViewCell
        
        let meme = self.memes[indexPath.row]
        
        cell.textLabel!.text = meme.topText
        cell.detailTextLabel!.text = meme.bottomText
        cell.imageView?.image = meme.memedImage
        
        
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let detailController = self.storyboard!.instantiateViewControllerWithIdentifier("detailVC") as! MemeDetailsViewContoller
        
        let meme = self.memes[indexPath.row]
        detailController.meme = meme
        detailController.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(detailController, animated: true)
        
    }
    @IBAction func dissmiss(sender: AnyObject) {
        
        
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}




















