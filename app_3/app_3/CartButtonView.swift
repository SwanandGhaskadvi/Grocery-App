//
//  CartButtonView.swift
//  app_3
//
//  Created by general on 14/09/26.
//

import SwiftUI

struct CartButtonView: View {
    @State private var isAdded: Bool = false
    var body: some View {
        Button(action:{
            isAdded.toggle()
        }){
            HStack{
                if isAdded{
                    Image(systemName: "checkmark")
                        .foregroundColor(.white)
                        .font(.system(size: 14))
                        .frame(width:22,height:22)
                        .fontWeight(.semibold)
                        .background(Color.white.opacity(0.3))
                        .cornerRadius(5)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 6)
//                                .stroke(Color.white.opacity(0.8))
//                        )
                }
                Text(isAdded ? "Added to Cart" : "Add to Cart")
                    .font(.custom("Gilroy-light", size: 18))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                Spacer()
                
                Text(isAdded ? "Open Cart" : "Open Cart")
                    .font(.custom("Gilroy-light", size: 14))
                    .foregroundStyle(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
                Image(systemName: "chevron.right")
                    .font(.system(size: 12))
                    .foregroundStyle(Color(#colorLiteral(red: 0.9882352941, green: 0.9882352941, blue: 0.9882352941, alpha: 1)))
            }
            .padding(.horizontal,20)
            .padding(.vertical,10)
            .background(isAdded ? Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)): Color.gray)
            .clipShape(Capsule())
        }
        .frame(maxWidth:300)
        .animation(.default,value:isAdded)
    }
}

#Preview {
    CartButtonView()
}
