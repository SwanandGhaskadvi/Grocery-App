//
//  Location.swift
//  app_3
//
//  Created by general on 09/09/26.
//

import SwiftUI

struct Location: View {
    @State private var text: String = " "
    @FocusState private var email: Bool
    var body: some View {
        NavigationStack{
            VStack(){
                Image("illustration")
                    .padding(.top,40)
                Text("Select your Location")
                    .font(.custom("Gilroy-Light", size: 26))
                    .fontWeight(.medium)
                Text("Switch on your location to stay in tune \n with what’s happening in your area")
                    .font(.custom("Gilroy-Light", size: 16))
                    .foregroundStyle(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding(.top,3)
                Text("Your Zone")
                    .font(.custom("Gilroy-Light", size: 16))
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.top,120)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.gray)
                //                Color.clear.frame(width: 24)
                //                    .offset(x: -4)
                //                    .opacity(0.8)
                
                HStack{
                    TextField(" ", text:$text )
                    Image(systemName: "chevron.down")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.blue)
                }
                Divider()
                    .foregroundStyle(.black)
                
                Text("Your Area")
                    .font(.custom("Gilroy-Light", size: 16))
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.top,20)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.gray)
                HStack{
                    TextField("Types of your Area", text:$text )
                    Image(systemName: "chevron.down")
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundStyle(.blue)
                }
                Divider()
                    .foregroundStyle(.black)
                VStack{
                    NavigationLink(destination: loging_page())
                    {
                        Text("Submit")
                            .foregroundStyle(.white)
//                            .frame(width: 300, height: 55)
                            .frame(width:364,height:67)
                            .background(Color(#colorLiteral(red: 0.3848803043, green: 0.7366343737, blue: 0.5329580903, alpha: 1)))
                            .cornerRadius(10)
                    }
                    
                }
                .padding(.top,40)
              
               
                
            }
            .padding(.horizontal,30)
            Spacer()
        }
    }
}

#Preview {
    Location()
}
