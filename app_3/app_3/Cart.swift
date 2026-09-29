//
//  Cart.swift
//  app_3
//
//  Created by general on 14/09/26.
//

import SwiftUI

struct Cart: View {
    @State private var cartCount = 0
    func addItemToCart() {
        cartCount += 1
        print("Item added! Total items: \(cartCount)")
    }
    var body: some View {
        VStack(spacing:30){
            Text("Cart Items: \(cartCount)")
                .font(.largeTitle)
            
            BananaCardView(onAddTap: {
                addItemToCart()
            })
        }
        .padding()
    }
}

#Preview {
    Cart()
}
