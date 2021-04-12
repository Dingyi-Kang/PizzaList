//
//  fetchJson.swift
//  Json
//
//  Created by Dingyi Kang on 4/11/21.
//

import Foundation


class fetchJson {
    
    func fetch () -> [pizza] {
        let pathStirng = Bundle.main.path(forResource: "data", ofType: "json")
        if let path = pathStirng {
           let url = URL(fileURLWithPath: path)
            
            do{
           let data = try Data(contentsOf: url)
         
                let pizzas = try JSONDecoder().decode([pizza].self, from: data)
            
                for r in pizzas {
                    r.id = UUID()
                }
            
            return pizzas
            }
            
            
            catch{print(error)}
            
        }
        return [pizza]()
    }
    
    
}

