//
//  app_3App.swift
//  app_3
//
//  Created by Student on 07/08/26.
//

import SwiftUI

@main
struct app_3App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showPassword = false

    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.blue, .purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 25) {

                Image(systemName: "person.circle.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.white)

                Text("Welcome Back")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)

                Text("Login to continue")
                    .foregroundColor(.white.opacity(0.8))

                VStack(spacing: 15) {

                    HStack {
                        Image(systemName: "envelope")
                            .foregroundColor(.gray)

                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)

                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(.gray)

                        if showPassword {
                            TextField("Password", text: $password)
                        } else {
                            SecureField("Password", text: $password)
                        }

                        Button {
                            showPassword.toggle()
                        } label: {
                            Image(systemName: showPassword ? "eye.slash" : "eye")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                }

                HStack {
                    Spacer()

                    Button("Forgot Password?") {
                        print("Forgot Password")
                    }
                    .foregroundColor(.white)
                }

                Button {
                    print("Login clicked")
                } label: {
                    Text("LOGIN")
                        .bold()
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                }

                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.white)

                    Button("Sign Up") {
                        print("Sign Up clicked")
                    }
                    .bold()
                    .foregroundColor(.white)
                }
            }
            .padding(25)
        }
    }
}

