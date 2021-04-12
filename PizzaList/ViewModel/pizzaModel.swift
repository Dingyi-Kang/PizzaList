
//
//  pizzaModel.swift
//  Json
//
//  Created by Dingyi Kang on 4/10/21.
//

import Foundation

class viewModel : ObservableObject{
   @Published var pizzas = [pizza]()
    
    init() {

        pizzas = fetchJson().fetch()
    }
    
    
    
    
    
}
