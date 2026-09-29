//
//  SignUp.swift
//  app_3
//
//  Created by general on 12/09/26.
//

import SwiftUI

struct SignUp: View {
    @State private var text: String = " "
    @State private var password: String = ""
    @State private var isPasswordVisible: Bool = false
    @State private var isEmailVisible:Bool = false
    @FocusState private var isFocused: Bool
    var body: some View {
        VStack{
            Image("Group-2")
                .padding(.top,30)
            HStack{
                Text("Sign Up")
                    .font(.custom("Gilroy-ExtraBold",size: 26))
                    .fontWeight(.semibold)
                    .padding(.top,80)
                Spacer()
            }
            HStack{
                Text("Enter your credentials to continue")
                    .font(.custom("Gilroy-Light",size:16))
                    .fontWeight(.medium)
                    .foregroundStyle(Color(#colorLiteral(red: 0.5593468547, green: 0.5593467951, blue: 0.5593468547, alpha: 1)))
                    .padding(.top,8)
                Spacer()
            }
            HStack{
                Text("Username")
                    .font(.custom("Gilroy-Light",size:16))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(#colorLiteral(red: 0.5593468547, green: 0.5593467951, blue: 0.5593468547, alpha: 1)))
                    .padding(.top,20)
                Spacer()
            }
            HStack{
                TextField("Enter your Username", text: $text)
                    .font(.custom("Gilroy-Light",size:18))
                    .fontWeight(.medium)
                    .foregroundStyle(.black)
                    .keyboardType(.emailAddress)
                    .focused($isFocused)
                    .padding(.bottom,3)
            }
            Divider()
                .background(isFocused ? Color.blue : Color.gray)
            
            HStack{
                Text("Email")
                    .font(.custom("Gilroy-Light",size:16))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(#colorLiteral(red: 0.5593468547, green: 0.5593467951, blue: 0.5593468547, alpha: 1)))
                    .padding(.top,20)
                Spacer()
            }
            HStack{
                if isEmailVisible{
                    TextField("Enter your email", text: $text)
                        .font(.custom("Gilroy-Light",size:18))
                        .fontWeight(.medium)
                        .foregroundStyle(.black)
                        .keyboardType(.emailAddress)
                        .focused($isFocused)
                        .padding(.bottom,3)
                }else{
                    TextField("Enter your email", text: $text)
                        .font(.custom("Gilroy-Light",size:18))
                        .fontWeight(.medium)
                        .foregroundStyle(.black)
                        .keyboardType(.emailAddress)
                        .focused($isFocused)
                        .padding(.bottom,3)
                }
            }
            Divider()
                .background(isFocused ? Color.blue : Color.gray)
            HStack{
                Text("Password")
                    .font(.custom("Gilroy-Light",size:16))
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(#colorLiteral(red: 0.5593468547, green: 0.5593467951, blue: 0.5593468547, alpha: 1)))
                    .padding(.top,30)
                Spacer()
            }
            HStack{
                if isPasswordVisible {
                    TextField("Enter your password",text:$password)
                        .font(.custom("Gilroy-Light",size:18))
                        .fontWeight(.medium)
                        .foregroundStyle(.black)
                        .keyboardType(.namePhonePad)
                        .focused($isFocused)
                        .padding(.bottom,3)
                    //                    isEmailVisible.toggle()
                }else{
                    SecureField("Enter your password", text: $password)
                        .font(.custom("Gilroy-Light",size:18))
                        .fontWeight(.medium)
                        .foregroundStyle(.black)
                        .keyboardType(.namePhonePad)
                        .focused($isFocused)
                        .padding(.bottom,3)
                }
                Button(action:{
                    isPasswordVisible.toggle()
                }){
                    Image(systemName:isPasswordVisible ? "eye" : "eye.slash")
                        .foregroundStyle(.blue)
                }
                
            }
            Divider()
                .background(isFocused ? Color.blue : Color.gray)
            
            HStack(spacing:5){
                Text("By continuing you agree to our")
                    .font(Font.custom("Gilroy-Light", size: 14))
                    .foregroundStyle(Color(#colorLiteral(red: 0.5593468547, green: 0.5593467951, blue: 0.5593468547, alpha: 1)))
                Button("Terms of Service"){
                    print("Button Tapped")
                }
                .font(Font.custom("Gilroy-Light", size: 14))
                .foregroundStyle(Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)))
                .fontWeight(.medium)
                Spacer()

            }
            .padding(.top,8)
            HStack(spacing:5){
                Text("and")
                    .font(Font.custom("Gilroy-Light", size: 14))
                    .foregroundStyle(Color(#colorLiteral(red: 0.5593468547, green: 0.5593467951, blue: 0.5593468547, alpha: 1)))
                Button("Privacy Policy"){
                    print("Button Tapped")
                }
                .font(Font.custom("Gilroy-Light", size: 14))
                .foregroundStyle(Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)))
                .fontWeight(.medium)
                Spacer()

            }
            
            Button(action:{
                
            }){
                Text("Sign Up")
                    .foregroundStyle(.white)
                    .frame(width:364,height:67)
                    .background(Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)))
                    .clipShape(.capsule)
            }
            
//            VStack{
//                NavigationLink(destination:onBoarding())
//                {
//                    Text("Sign Up")
//                        .foregroundStyle(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                        .background(Color(#colorLiteral(red: 0.325447917, green: 0.6944325566, blue: 0.4588611722, alpha: 1)))
//                        .frame(width:364,height:67)
//                        .cornerRadius(60)
//                }
//            }
           
            .padding(.top,20)
            HStack{
                Text("Don't have an account?")
                    .font(.custom("Gilroy-Light",size:14))
                    .fontWeight(.semibold)
                NavigationLink(destination:SignUp()){
                    Text("Sign Up")
                        .font(.custom("Gilroy-Light",size:14))
                        .fontWeight(.semibold)
                        .foregroundStyle(.green)
                }
            }
            .padding(.top,5)
                Spacer()
            }
            .padding(.horizontal,30)
        }
    }
#Preview {
    SignUp()
}
