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
            VStack {
                firstSection()
                
                
                
                
            }
        }
    }
}


// MARK: - 첫 번째 섹션

private struct firstSection: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Grid {
                GridRow{
                    ForEach(0..<App.collectionViewApps.count, id: \.self) { index in
                        AppTileImageView(app: App.collectionViewApps[index])
                            .padding(.horizontal)
                            .clipShape(.rect(cornerRadius: 10))
                    }
                }
            }
            .padding(.horizontal, 20)
        }
        .scrollTargetBehavior(.viewAligned)
    }
}


// MARK: - 두 번째 섹션




#Preview {
//    AppView()
    FinancialView()
}
