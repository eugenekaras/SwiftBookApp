//
//  ContentView.swift
//  SwiftBookApp
//
//  Created by Евгений Карась on 24.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world !")
            NavigationView{
                List {
                    Text("Trr")
                    Text("Trr13")
                    Text("Trr 3]")
                    
                }
                
                .navigationBarTitle(Text("Friends"))
            }
            
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
