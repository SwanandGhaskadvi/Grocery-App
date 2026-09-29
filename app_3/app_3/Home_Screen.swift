//
//  Home_Screen.swift
//  app_3
//
//  Created by general on 12/09/26.
//

import SwiftUI

struct Home_Screen: View {
    @State private var value:String = ""
    @State private var isHovered = false
//    let iconName:String
//    let title :String
//    let action : () -> Void
//    struct TabButtonStyle:ButtonStyle{
//        func makeBody(configuration: Configuration) -> some View {
//            configuration.label
//                .background(configuration.isPressed ? Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)) : Color.clear)
//                .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
//                .animation(.easeOut(duration:0.15),value:configuration.isPressed)
//        }
//    }
    var body: some View {
//        let iconName:String
//        let title :String
//        let action : () -> Void
        NavigationStack{
            VStack{
                Image("Group-2")
                    .padding(.top,15)
                HStack{
                    Image(systemName: "mappin")
                        .font(.system(size: 20))
                        .foregroundColor(Color(#colorLiteral(red: 0.2980392157, green: 0.3098039216, blue: 0.3019607843, alpha: 1)))
                    Text("Dhaka, Banassre")
                        .font(.custom("Gilroy-Light",size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(#colorLiteral(red: 0.2980392157, green: 0.3098039216, blue: 0.3019607843, alpha: 1)))
                        .padding(.trailing,30)
                }
                HStack{
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 18))
                        .foregroundStyle(Color(#colorLiteral(red: 0.09411764706, green: 0.1058823529, blue: 0.09803921569, alpha: 1)))
                    TextField("Search Store",text: $value)
                        .foregroundStyle(Color(#colorLiteral(red: 0.4862745098, green: 0.4862745098, blue: 0.4862745098, alpha: 1)))
                        .font(.custom("Gilroy-Light",size: 14))
                        .fontWeight(.semibold)
                }
                .padding(15)
                .background(Color(#colorLiteral(red: 0.9490196078, green: 0.9529411765, blue: 0.9490196078, alpha: 1)))
                .cornerRadius(6)
                ScrollView(.vertical,showsIndicators: false){
                    Image("banner")
                        .padding(.top,7)
                    HStack(alignment:.lastTextBaseline){
                        Text("Exclusive Offer")
                            .font(.custom("Gilroy-Light",size:24))
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action: {
                            
                        }){
                            Text("See all")
                                .font(.custom("Gilroy-Light",size:16))
                                .foregroundStyle(Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)))
                                .fontWeight(.semibold)
                                .frame(maxWidth:.infinity,alignment: .trailing)
                        }
                        Spacer()
                    }
                    .padding(.top,15)
                    ScrollView(.horizontal){
                        HStack(){
                            BananaCardView(onAddTap: {})
                            AppleCardView(onAddTap: {})
                                .frame(maxWidth:.infinity,alignment: .trailing)
                            BananaCardView(onAddTap: {})
                            AppleCardView(onAddTap: {})
                                .frame(maxWidth:.infinity,alignment: .trailing)
                            Spacer()
                        }
                    }
                    HStack(alignment:.lastTextBaseline){
                        Text("Best Selling")
                            .font(.custom("Gilroy-Light",size:24))
                            .fontWeight(.semibold)
                        Spacer()
                        Button(action: {
                            
                        }){
                            Text("See all")
                                .font(.custom("Gilroy-Light",size:16))
                                .foregroundStyle(Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)))
                                .fontWeight(.semibold)
                                .frame(maxWidth:.infinity,alignment: .trailing)
                        }
                        Spacer()
                    }
                    .padding(.top,10)
                    ScrollView(.horizontal){
                        HStack(){
                            Pepper(onAddTap: {})
                            Ginger(onAddTap: {})
                                .frame(maxWidth:.infinity,alignment: .trailing)
                            Pepper(onAddTap: {})
                            Ginger(onAddTap: {})
                                .frame(maxWidth:.infinity,alignment: .trailing)
                            Spacer()
                        }
                    }
                }
                HStack(spacing:30){
                    
                        Button(action: {
                            
                        })
                        {
                            VStack{
                                Image(systemName: "storefront")
                                    
                                    .font(.system(size: 20))
                                    
                                Text("Shop")
                                    .font(.custom("Gilroy-light",size:12))
                            }
                            .foregroundColor(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                            
                        }
                        .hoverEffect(.lift)
                        .scaleEffect(isHovered ? 1.05 : 1.0)
//                        .buttonStyle(TabButtonStyle())
                        
                        
                    Button(action: {
                        
                    })
                    {
                        VStack{
                            Image(systemName: "text.magnifyingglass")
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                                .font(.system(size: 20))
                            Text("Explore")
                                .font(.custom("Gilroy-light",size:12))
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                        }
                    }
                    Button(action: {
                        
                    })
                    {
                        VStack{
                            Image(systemName: "cart.badge.plus.fill")
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                                .font(.system(size: 20))
                            Text("Cart")
                                .font(.custom("Gilroy-light",size:12))
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                        }
                    }
                    
                    Button(action: {
                        
                    })
                    {
                        VStack{
                            Image(systemName: "star")
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                                .font(.system(size: 20))
                            Text("Favourite")
                                .font(.custom("Gilroy-light",size:12))
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                        }
                    }
                    
                    Button(action: {
                        
                    })
                    {
                        VStack{
                            Image(systemName: "person.crop.circle")
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                                .font(.system(size: 20))
                            Text("Account")
                                .font(.custom("Gilroy-light",size:12))
                                .foregroundStyle(Color(#colorLiteral(red: 0.1245300993, green: 0.1218968406, blue: 0.193210572, alpha: 1)))
                        }
                    }
                        
                        
                    
                    
                }
                .padding(.bottom,-15)
                .padding(.top,5)
                Spacer()
                
            }
            .padding(.horizontal,20)
        }
    }
}

#Preview {
    Home_Screen()
}
