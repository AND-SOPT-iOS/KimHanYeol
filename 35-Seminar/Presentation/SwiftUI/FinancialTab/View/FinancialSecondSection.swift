//
//  FinancialSecondSection.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct FinancialSecondSection: View {
    @ObservedObject var viewModel: FinancialViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(viewModel.secondSectionHeader)
                    .font(.system(size: 26, weight: .semibold))
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .bold()
            }
            
            Text(viewModel.secondSectionSubHeader)
                .font(.system(size: 18, weight: .regular))
                .foregroundStyle(.gray)
            
            ScrollView(.horizontal, showsIndicators: false){
                Grid(horizontalSpacing: 15){
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: viewModel.essentialApps[(index*3) + 0])
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: viewModel.essentialApps[(index*3) + 1])
                        }
                    }
                    
                    Divider()
                    
                    GridRow{
                        ForEach(0..<3, id: \.self) { index in
                            AppTileView(app: viewModel.essentialApps[(index*3) + 2])
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
    FinancialView()
}
