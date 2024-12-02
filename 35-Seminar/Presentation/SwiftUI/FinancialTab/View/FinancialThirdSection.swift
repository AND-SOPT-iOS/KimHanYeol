//
//  FinancialThirdSection.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct FinancialThirdSection: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("유료 순위")
                    .font(.system(size: 26, weight: .semibold))
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .bold()
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                Grid(horizontalSpacing: 15){
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.paidApps[(index*3) + 0])
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.paidApps[(index*3) + 1])
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: App.paidApps[(index*3) + 2])
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
    FinancialThirdSection()
}
