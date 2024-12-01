//
//  MainView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        
        TabView {
            
            // Home
            HomeView()
                .tabItem { Label("홈", systemImage: "house") }
            
            // Library
            LibraryView()
                .tabItem { Label("서재", systemImage: "books.vertical") }
            
            // Record
            RecordView()
                .tabItem { Label("기록", systemImage: "applepencil") }
            
            // Option
            OptionView()
                .tabItem { Label("설정", systemImage: "gearshape") }
            
        }
    }
    
}
}


#Preview {
    MainView()
}
