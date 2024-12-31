//
//  TossSectionOne.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct TossSectionOne: View {
    @ObservedObject var viewModel: TossViewModel
    
    var body: some View {
        HStack(alignment: .bottom){
            Image(.tossApp)
                .resizable()
                .scaledToFit()
                .frame(width: 130)
                .clipShape(.buttonBorder)
                .shadow(radius: 1)
            
            
            VStack(alignment: .leading){
                Text(viewModel.title)
                    .font(.system(size: 26, weight: .semibold))
                
                Text(viewModel.subTitle)
                    .font(.system(size: 16))
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Button {
                    //
                } label: {
                    Text("받기")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(.white)
                        .padding(.horizontal, 25)
                        .padding(.vertical, 5)
                        .background(.blue)
                        .clipShape(.capsule)
                }
                
            }
            .padding(.horizontal, 10)
            
            Spacer()
            
            Image(systemName: "square.and.arrow.up")
                .resizable()
                .scaledToFit()
                .frame(width: 20)
                .foregroundStyle(.blue)
                .padding(.bottom, 5)
        }
    }
}

#Preview {
    TossView()
}
