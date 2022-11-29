//
//  ContentView.swift
//  SwiftBookApp
//
//  Created by Евгений Карась on 24.11.22.
//

import SwiftUI

struct ContentView: View {
    
    var categories: [String: [ProductsResponse]] {
        .init(
            grouping: materialResponse,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            
            List {
                Cell(user: swiftBook).listRowInsets(EdgeInsets())
                ForEach(self.categories.keys.sorted(), id: \.self) { key in

                    ProductRow(categoryName: key, items: self.categories[key]!)
                    
                }
                
            }.listRowInsets(EdgeInsets())
                .navigationBarTitle(Text("Homepage"))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
