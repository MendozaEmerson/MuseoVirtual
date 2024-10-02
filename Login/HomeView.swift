//
//  HomeView.swift
//  Login
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var isLogginedin: Bool
    
    var body: some View {
        VStack {
            Text("Bienvenido al Inicio")
                .font(.largeTitle)
                .padding()

            // Botón de Logout
            Button("Logout") {
                btnLogout()
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
    
    func btnLogout() {
        // Cambiar el estado de isLogginedin a false para desloguear
        isLogginedin = false
    }
}


