//
//  FinancialView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        NavigationStack{
            
            NavigationLink {
                FinancialView()
            } label: {
                Text("Go to Financial View!")
            }
            .navigationTitle("앱")
            
        }
    }
}

struct FinancialView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                
                // 첫 번째 섹션
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<App.collectionViewApps.count, id: \.self) { index in
                            AppTileImageView(app: App.collectionViewApps[index])
                                .padding(.horizontal)
                                .clipShape(.rect(cornerRadius: 5))
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
                
            }
            
            
            
            
        }
    }
}

#Preview {
//    AppView()
    FinancialView()
}
