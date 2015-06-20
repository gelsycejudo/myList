//
//  ItemViewController.swift
//  myList
//
//  Created by Gelsy Cejudo Valencia on 19/06/15.
//  Copyright (c) 2015 Gelsy Cejudo Valencia. All rights reserved.
//

import UIKit
import CoreData


class ItemViewController: UIViewController {

    @IBOutlet var textFieldItem: UITextField!
    @IBOutlet var textFieldQuantity: UITextField!
    @IBOutlet var textFieldInfo: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func saveTapped(sender: AnyObject) {
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let contxt: NSManagedObjectContext = appDel.managedObjectContext!
        let en = NSEntityDescription.entityForName("List", inManagedObjectContext: contxt)
        
        
        var newItem = Model(entity: en!, insertIntoManagedObjectContext: contxt)
        
        newItem.item = textFieldItem.text
        newItem.quantity = textFieldQuantity.text
        newItem.info = textFieldInfo.text
        
        contxt.save(nil)
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
        println(newItem)
    
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
