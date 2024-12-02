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
            VStack(alignment: .leading) {
                firstSection()
                    .padding(.bottom, 20)
                
                secondSection()
                
            }
        }
        .navigationTitle("금융")
        .navigationBarTitleDisplayMode(.inline)
    }
}


// MARK: - 첫 번째 섹션: Grid로 구현!

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


// MARK: - 두 번째 섹션:

private struct secondSection: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("필수 금융앱")
                    .font(.system(size: 26, weight: .semibold))
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .bold()
            }
            
            Text("App Store 에디터가 직접 골랐습니다")
                .font(.system(size: 18, weight: .regular))
                .foregroundStyle(.gray)
            
            ScrollView(.horizontal, showsIndicators: false){
                Grid(horizontalSpacing: 15){
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.essentialApps[(index*3) + 0])
                        }
                    }
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.essentialApps[(index*3) + 1])
                        }
                    }
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.essentialApps[(index*3) + 2])
                        }
                    }
                    
                }
            }
            .scrollTargetBehavior(.paging)
        }
        .padding(20)
    }
}



#Preview {
        AppView()
//    FinancialView()
}
