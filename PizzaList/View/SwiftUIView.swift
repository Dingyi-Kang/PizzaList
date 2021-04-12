//
//  content.swift
//  Json
//
//  Created by Dingyi Kang on 4/11/21.
//

import SwiftUI

struct content: View {
    var p2:pizza
    var body: some View {
        
        ScrollView{
        VStack(alignment: .leading){
            Image(p2.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10.0)
            VStack(alignment: .leading){
                Text("Toppings")
                    .font(.system(size:25, weight:.bold))
                    .foregroundColor(.red)
                ForEach(1...p2.toppings!.count, id:\.self){ i in
                    Text("•  "+p2.toppings![i-1])
                        .padding(.vertical, 5.0)
                        .font(.system(size: 18, weight:.bold))
                        .foregroundColor(.purple)
                    
                    
                }
                
                
            }
            .padding(.leading, 8.0)
            .padding(.top, 10.0)
            
            Spacer()
            
        }
        }.navigationBarTitle(p2.name!).colorInvert().foregroundColor(.red)
        
    }
}

struct content_Previews: PreviewProvider {
    static var previews: some View {
        let model = viewModel()
        content(p2: model.pizzas[0])
    }
}

