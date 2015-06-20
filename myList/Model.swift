//
//  Model.swift
//  myList
//
//  Created by Gelsy Cejudo Valencia on 19/06/15.
//  Copyright (c) 2015 Gelsy Cejudo Valencia. All rights reserved.
//

import UIKit
import CoreData


@objc(Model)
class Model: NSManagedObject {
    
    
    //properties feeding the atributes in our entity
    //must match the entity atributes
    
    @NSManaged var item: String
    @NSManaged var quantity: String
    @NSManaged var info: String
   
}
