//
//  FinancialSecondSection.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct FinancialSecondSection: View {
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
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.essentialApps[(index*3) + 1])
                        }
                    }
                    
                    Divider()
                    
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
    FinancialSecondSection()
}
