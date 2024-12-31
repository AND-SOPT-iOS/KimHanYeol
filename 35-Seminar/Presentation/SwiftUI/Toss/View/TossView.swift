//
//  TossView.swift
//  35-Seminar
//
//  Created by OneTen on 12/2/24.
//

import SwiftUI

struct TossView: View {
    @StateObject var viewModel = TossViewModel()
    
    var body: some View {
        ScrollView(showsIndicators: false){
            TossSectionOne(viewModel: viewModel)
                .padding(.bottom, 20)
            
            Divider()
            
            TossSectionTwo(viewModel: viewModel)
                .padding(.bottom, 20)
            TossSectionThree(viewModel: viewModel)
            
            Divider()
                .padding(.bottom, 20)
            
            TossSectionFour(viewModel: viewModel)
            TossSectionFive(viewModel: viewModel)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}

#Preview {
    TossView()
}
