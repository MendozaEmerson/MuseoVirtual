//
//  SceneDelegate.swift
//  Login
//
//  Created by epismac on 3/10/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }

        window = UIWindow(windowScene: windowScene)
        
        // Crear una instancia de HomeViewController
        let homeViewController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeViewController)
        
        // Configurar la ventana
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}

