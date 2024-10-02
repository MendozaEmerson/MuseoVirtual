//
//  LoginApp.swift
//  Login
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct User {
    var username: String
    var password: String
    var name: String
    var lastname: String
    //var age: Int
    var email: String
}

@main
struct LoginApp: App {
    
    @State var isLogginedin: Bool = false
    @State var users: [User] = [] // Array para almacenar los usuarios creados
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            
            if isLogginedin {
                
                HomeView(isLogginedin: $isLogginedin)
            }else{
                LoginView(isLogginedin: $isLogginedin, users: $users)
            }
        }
    }
}
