//
//  SceneDelegate.swift
//  35-Seminar
//
//  Created by OneTen on 10/5/24.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(
                rootView: MainView()
            )
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
