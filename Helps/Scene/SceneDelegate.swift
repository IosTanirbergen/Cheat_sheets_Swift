//
//  SceneDelegate.swift
//  Helps
//
//  Created by Tanirbergen Kaldibai on 13.02.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        window?.makeKeyAndVisible()
        
        let navigationController = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = navigationController
    }
}

