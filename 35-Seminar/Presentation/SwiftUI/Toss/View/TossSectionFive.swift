//
//  TossSectionFive.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

struct TossSectionFive: View {
    @ObservedObject var viewModel: TossViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            HStack(alignment: .center){
                Text("평가 및 리뷰")
                    .font(.system(size: 24, weight: .semibold))
                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
                    .bold()
            }
            
            HStack{
                Text(viewModel.averageScore)
                    .font(.system(size: 68, weight: .bold))
                
                Spacer()
                
                VStack(alignment: .trailing){
                    HStack(spacing: 3){
                        ForEach(0..<4) { _ in
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 23)
                        }
                        Image(systemName: "star.leadinghalf.filled")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 23)
                    }
                    Text(viewModel.numberOfEvaluate)
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(.gray)
                }
            }
            .padding(.bottom, 5)
            
            Text("가장 도움이 되는 리뷰")
                .font(.system(size: 18, weight: .semibold))
                .padding(.bottom, 10)
            
            TabView{
                ForEach(0..<5) { index in
                    VStack(alignment: .leading, spacing: 5){
                        Text(viewModel.review[index].customerReviewViewTitle)
                        
                        HStack(spacing: 5){
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 13)
                            }
                            
                            Text(viewModel.review[index].customerReviewViewDateLabel)
                                .font(.system(size: 16))
                                .padding(.leading, 5)
                                .foregroundStyle(.gray)
                            
                            Text("-")
                                .foregroundStyle(.gray)
                                .font(.system(size: 16))
                            Text(viewModel.review[index].customerNameLabel)
                                .foregroundStyle(.gray)
                                .font(.system(size: 16))
                        }
                        
                        Text(viewModel.review[index].customerReviewLabel)
                            .font(.system(size: 16))
                            .foregroundStyle(.gray)
                            .lineLimit(2)
                            .padding(.bottom, 10)
                        
                        HStack(spacing: 10){
                            Text(viewModel.review[index].developerReviewViewTitle)
                                .font(.system(size: 16))
                            Text(viewModel.review[index].developerReviewViewDateLabel)
                                .font(.system(size: 16))
                                .foregroundStyle(.gray)
                        }
                        
                        Text(viewModel.review[index].developerReviewLabel)
                            .font(.system(size: 16))
                            .foregroundStyle(.gray)
                            .lineLimit(2)
                        
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .shadow(color: .gray, radius: 4, x: 1, y: 1)
                            .opacity(0.5)
                    )
                }
            }
            .tabViewStyle(.page)
            .padding(.bottom, 50)
            .frame(width: 330, height: 250)
            
        }
    }
}

#Preview {
    TossView()
}
