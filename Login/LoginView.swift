//
//  LoginView.swift
//  Login
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var username = ""
    @State private var password = ""
    @Binding var isLogginedin: Bool
    
    var body: some View {
        NavigationView{
            VStack{
                Image(.icLogin)
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()
                                        
                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                                        
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .disableAutocorrection(true)
                                        
                Button("Login", action: btnLogin)
                    .buttonStyle(.borderedProminent)
                                        
                NavigationLink(destination: CreatedAccountView()){
                    Text("Create my account")
                }
                    .navigationTitle("Login")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                                
            }
        }
        
        
    }
    
    func btnLogin() {
        isLogginedin = true
    }
}

//
