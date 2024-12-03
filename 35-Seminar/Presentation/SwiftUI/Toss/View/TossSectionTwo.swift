//
//  TossSectionTwo.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct TossSectionTwo: View {
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
    TossSectionTwo()
}
