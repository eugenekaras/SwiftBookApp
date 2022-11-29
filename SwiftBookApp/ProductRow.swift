//
//  ProductRow.swift
//  SwiftBookApp
//
//  Created by Евгений Карась on 28.11.22.
//

import SwiftUI

struct ProductRow: View {
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text(self.categoryName).font(.headline)
                .padding(.leading,15)
                .padding(.top,5)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .center, spacing: 0){
                    ForEach(self.items) { item in
                        ProductItem(object: item)
                    }
                }
                
                
                
            }.frame(height: 190)
        }
        
    }
}


//#if BEBUG
struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(categoryName: materialResponse[0].category.rawValue, items: Array(materialResponse.prefix(3)))
    }
}
//#endif
