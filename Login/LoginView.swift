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
    
    var body: some View {
        VStack{
                TextField("Username", text: $username)
                .padding()
                .textFieldStyle(.roundedBorder)
        }
    }
}

//
