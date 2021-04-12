//
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var model = viewModel()
    
    var body: some View {
    
        NavigationView{
            List(model.pizzas){ p in
                
                NavigationLink(
                    destination: content(p2: p),
                    label: {
                        HStack(alignment: .center){
                            Image(p.image)
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 80.0, height: 80.0)
                                .clipped()
                                .cornerRadius(10.0)
                            
                            VStack{
                                Text(p.name!)
                                    .font(.system(size: 20, weight:.bold))
                                    .foregroundColor(.orange)
                            }
                            
                        }
                    })
                
               
            }.navigationTitle("Menu")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
