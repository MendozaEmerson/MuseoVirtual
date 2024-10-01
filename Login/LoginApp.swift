//
//  LoginApp.swift
//  Login
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

@main
struct LoginApp: App {
    
    @State var isLogginedin: Bool = false
    var body: some Scene {
        WindowGroup {
            //ContentView()
            if isLogginedin {
                HomeView()
            }else{
                LoginView(isLogginedin: $isLogginedin)
            }
        }
    }
}
