//
//  TossView.swift
//  35-Seminar
//
//  Created by OneTen on 12/2/24.
//

import SwiftUI

struct TossView: View {
    var body: some View {
        ScrollView{
            TossHeaderView()
                .padding(20)
            
            Divider()
            
            
        }
    }
}

struct TossHeaderView: View {
    var body: some View {
        HStack(alignment: .bottom){
            Image(.tossApp)
                .resizable()
                .scaledToFit()
                .frame(width: 130)
                .clipShape(.buttonBorder)
                .shadow(radius: 1)
            
            
            VStack(alignment: .leading){
                Text("토스")
                    .font(.system(size: 26, weight: .semibold))
                
                Text("금융이 쉬워진다")
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
