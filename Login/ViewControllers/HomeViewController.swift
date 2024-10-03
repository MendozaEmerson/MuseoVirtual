//
//  HomeViewController.swift
//  Login
//
//  Created by epismac on 3/10/24.
//
import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar la vista
        view.backgroundColor = .white
        
        // Configurar la barra de navegación
        title = "Home" // Título que se mostrará en la barra de	 navegación
        navigationController?.navigationBar.prefersLargeTitles = true // Opción para títulos grandes
        navigationItem.largeTitleDisplayMode = .always // Habilitar el título grande

        // Crear botones en la barra de navegación
        let leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "icon1"), style: .plain, target: self, action: #selector(actionForIcon1))
        let middleBarButtonItem = UIBarButtonItem(image: UIImage(named: "icon2"), style: .plain, target: self, action: #selector(actionForIcon2))
        let rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "icon3"), style: .plain, target: self, action: #selector(actionForIcon3))
        
        // Asignar los botones a la barra de navegación
        navigationItem.leftBarButtonItem = leftBarButtonItem
        navigationItem.rightBarButtonItems = [rightBarButtonItem, middleBarButtonItem]
    }
    
    // Acciones para cada icono
    @objc func actionForIcon1() {
        print("Icono 1 presionado")
        // Lógica para el icono 1 (por ejemplo, navegar a otra vista)
    }
    
    @objc func actionForIcon2() {
        print("Icono 2 presionado")
        // Lógica para el icono 2
    }
    
    @objc func actionForIcon3() {
        print("Icono 3 presionado")
        // Lógica para el icono 3
    }
}
