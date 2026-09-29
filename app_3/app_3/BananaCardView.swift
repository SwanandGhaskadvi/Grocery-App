//
//  Banana.swift
//  app_3
//
//  Created by general on 12/09/26.
//

import SwiftUI

struct BananaCardView: View {
    var onAddTap: () -> Void
    var body: some View {
            VStack{
                Image("banana")
                Text("Organic Bananas")
                    .font(.custom("Gilroy-Light",size:16))
                    .fontWeight(.medium)
                    .padding(.top,8)
                HStack{
                    Text("7pcs,PriceG")
                        .foregroundStyle(Color(#colorLiteral(red: 0.4862745098, green: 0.4862745098, blue: 0.4862745098, alpha: 1)))
                        .font(.custom("Gilroy-Light",size:14))
                        .padding(.top,1)
                    Spacer()
                }
                HStack(){
                    Text("$4.99")
                        .font(.custom("Gilroy-Light",size:18))
                        .fontWeight(.semibold)
                    HStack(){
                        Spacer()
                        Button(action: {
                            onAddTap()
                        }) {
                            Image("Group6813")
                                .frame(maxWidth:.infinity,maxHeight:.infinity,alignment:.trailing)
                        }
                        .padding(.trailing,-12)
                    }
                    Spacer()
                }
                .padding(.top,10)
                Spacer()
            }
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
            .padding(.top,28)
            .padding(.horizontal,21)
            .frame(width:172,height:248)
            .overlay{
                RoundedRectangle(cornerRadius: 15)
                    .strokeBorder(style: StrokeStyle(lineWidth: 1.5, lineCap: .round, lineJoin: .round))
                    .foregroundStyle(Color(#colorLiteral(red: 0.8862745098, green: 0.8862745098, blue: 0.8862745098, alpha: 1)))
            }
            .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            
        }
}

#Preview {
    BananaCardView(onAddTap: {})
}
