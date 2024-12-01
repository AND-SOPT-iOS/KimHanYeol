//
//  MainView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI
import UIKit

import Then

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    init() {
        UITabBar.appearance().backgroundColor = .opaqueSeparator.withAlphaComponent(0.2)
    }
    
    var body: some View {
        TabView {
            
            // Today
            TodayView()
                .tabItem { Label("투데이", systemImage: "doc.text.image") }
            
            // Library
            GameView()
                .tabItem { Label("게임", systemImage: "gamecontroller") }
            
            // App
            AppView()
                .tabItem { Label("앱", systemImage: "square.stack.3d.up") }
            
            // Arcade
            ArcadeView()
                .tabItem { Label("Arcade", systemImage: "arcade.stick.console") }
            
            // Search
            SearchView()
                .tabItem { Label("검색", systemImage: "gearshape") }
            
        }
        
        
    }
}


#Preview {
    MainView()
}
