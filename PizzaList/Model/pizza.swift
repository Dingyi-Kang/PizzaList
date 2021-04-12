//
//  pizza.swift
//  Json
//
//  Created by Dingyi Kang on 4/10/21.
//

import Foundation

class pizza: Identifiable, Decodable{
    
    var id:UUID?
    var name:String?
    var toppings:[String]?
    var image = ""
    
    
}


