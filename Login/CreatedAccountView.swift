//
//  CreatedAccountView.swift
//  Login
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct CreatedAccountView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var name = ""
    @State private var lastname = ""
    @State private var age = ""
    @State private var email = ""
    @Binding var users: [User]
    @State private var accountCreated = false
    
    var body: some View {
        VStack{
            Text("Nueva Cuenta")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            TextField("Nombres", text: $name)
                .padding(.horizontal)
                .textFieldStyle(.roundedBorder)
            
            TextField("Apellidos", text: $lastname)
                .padding(.horizontal)
                .textFieldStyle(.roundedBorder)
            
            TextField("Username", text: $username)
                .padding(.horizontal)
                .textFieldStyle(.roundedBorder)
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            TextField("Edad", text: $age)
                .keyboardType(.numberPad) // teclado numerico
                .padding(.horizontal)
                .textFieldStyle(.roundedBorder)
            
            TextField("Correo", text: $email)
                .padding(.horizontal)
                .keyboardType(.emailAddress) // teclado para correos
                .autocapitalization(.none)
                .textFieldStyle(.roundedBorder)
            
            Button(action: {
                            // Validar y crear un nuevo usuario
                
                                let newUser = User(username: username, password: password, name: name, lastname: lastname, email: email)
                                users.append(newUser) // Añadir el nuevo usuario al array
                                print("Cuenta creada para \(username)")
                print(users[0])
                                
                                accountCreated = true
                
                        }) {
                            Text("Crear Cuenta")
                                .font(.headline)
                                .padding()
            }
            .padding(.horizontal)
            .buttonStyle(.borderedProminent)
            
            NavigationLink(destination:LoginView(isLogginedin:.constant(false), users: $users), isActive: $accountCreated) {
                            EmptyView() // No queremos mostrar ningún texto
            }
        }
    }
}

