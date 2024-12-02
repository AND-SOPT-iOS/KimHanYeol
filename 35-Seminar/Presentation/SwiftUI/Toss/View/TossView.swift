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
            TossFirstSection()
                .padding(.bottom, 20)
            
            Divider()
            
            TossSecondSection()
                .padding(.bottom, 20)
            
            
        }
        .padding(.horizontal, 20)
    }
}

struct TossFirstSection: View {
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

struct TossSecondSection: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                
                VStack(spacing: 5){
                    Text("8.4만개의 평가")
                        .font(.system(size: 14))
                    
                    Text("4.4")
                        .font(.system(size: 24, weight: .semibold, design: .rounded))
                    
                    HStack(spacing:0){
                        ForEach(0..<4) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 15)
                        }
                        Image(systemName: "star.leadinghalf.filled")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15)
                    }
                }
                .foregroundStyle(.gray)
                .frame(width: 90)
                .padding(.trailing, 10)
                
                Divider()
                    .frame(height: 50)
                
                VStack(spacing: 10){
                    Text("수상")
                        .font(.system(size: 14))
                    
                    Image(systemName: "person")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20)
                    
                    Text("앱")
                        .font(.system(size: 16))
                }
                .foregroundStyle(.gray)
                .frame(width: 90)
                
                Divider()
                    .frame(height: 50)
                
                VStack(spacing: 5){
                    Text("연령")
                        .font(.system(size: 14))
                    
                    Text("4+")
                        .font(.system(size: 26, weight: .semibold, design: .rounded))
                    
                    Text("세")
                        .font(.system(size: 16))
                }
                .foregroundStyle(.gray)
                .frame(width: 90)
                
                Divider()
                    .frame(height: 50)
                
            }
        }
    }
}

#Preview {
    TossView()
}
