//
//  FinancialFirstSection.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct FinancialFirstSection: View {
    @ObservedObject var viewModel: FinancialViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Grid {
                GridRow{
                    ForEach(0..<App.collectionViewApps.count, id: \.self) { index in
                        AppTileImageView(app: viewModel.collectionViewApps[index])
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

#Preview {
    FinancialView()
}
