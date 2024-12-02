//
//  MainView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI
import UIKit

import Then

struct SearchViewWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SearchView {
        return SearchView()
    }
    
    func updateUIViewController(_ uiViewController: SearchView, context: Context) {
        // 업데이트 로직 필요 시 여기에 추가
    }
}

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
            SearchViewWrapper()
                .tabItem { Label("검색", systemImage: "magnifyingglass") }
            
        }
        
        
    }
}


#Preview {
    MainView()
}
