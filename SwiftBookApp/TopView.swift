//
//  TopView.swift
//  SwiftBookApp
//
//  Created by Евгений Карась on 24.11.22.
//

import SwiftUI

struct TopView: View {
    var body: some View {
        HStack(spacing: 8.0) {
            Image("first")
                .resizable()
                .frame(width: 70,height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4.0) {
                Text("Don Ford")
                    .font(.title)
                HStack {
                    Text("info@swiftbook.ru ")
                        .font(.subheadline)
                    Spacer()
                    Image("like")
                    Text("12.2K")
                        .font(.subheadline)
                }
            }
        }
        
 
        
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
