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
        NavigationView { // Agregar NavigationView
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
                
                // Navegación a la vista de detalles
                NavigationLink(destination: DetailView()) {
                    Text("Ir a Detalles")
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Home") // Título de la barra de navegación
            .navigationBarTitleDisplayMode(.inline) // Opciones de visualización del título
        }
    }
    
    func btnLogout() {
        // Cambiar el estado de isLogginedin a false para desloguear
        isLogginedin = false
    }
}

// Vista de Detalles
struct DetailView: View {
    var body: some View {
        Text("Vista de Detalles")
            .font(.largeTitle)
            .navigationTitle("Detalles")
            .navigationBarTitleDisplayMode(.inline) // Opciones de visualización del título
    }
}

