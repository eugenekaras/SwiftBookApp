//
//  ContentView.swift
//  SwiftBookApp
//
//  Created by Евгений Карась on 24.11.22.
//

import SwiftUI

struct ContentView: View {
    var categories: [String: [ProductsResponse]]{
        .init(grouping:materialResponse, by: {$0.category.rawValue})
        
    }
    
    
    var body: some View {
        
        NavigationView{
//            List(self.categories.keys.sorted().inde) { key in
//                Text(key)
            }
            .navigationBarTitle(Text("Homepage"))
            
        }
        
//        VStack {
//            NavigationView{
//                List(userResponse) { user in
//                    Cell(user: user)
//
//
//                }
//
//                .navigationBarTitle(Text("Friends"))
//            }
//
//        }
//        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
