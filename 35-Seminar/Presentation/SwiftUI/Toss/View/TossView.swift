//
//  TossView.swift
//  35-Seminar
//
//  Created by OneTen on 12/2/24.
//

import SwiftUI

struct TossView: View {
    var body: some View {
        ScrollView(showsIndicators: false){
            TossSectionOne().padding(.bottom, 20)
            Divider()
            TossSectionTwo().padding(.bottom, 20)
            TossSectionThree()
            Divider().padding(.bottom, 20)
            TossSectionFour()
            TossSectionFive()
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    }
}



struct TossSectionFour: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("토스뱅크, 토스증권 서비스를 이용하시려면 토스 앱 설치가 필요합니다.")
                .lineSpacing(8)
                .font(.system(size: 16))
                .padding(.trailing, 20)
                .padding(.bottom, 5)
            
            HStack(spacing: 3){
                Image(systemName: "circle.fill")
                Text("내 금융 현황을 한눈에, 홈,소비")
                    .font(.system(size: 16))
                
                Spacer()
                
                Button("더 보기"){}
            }
            .padding(.bottom, 20)
            
            HStack{
                VStack(alignment: .leading, spacing: 3){
                    Button("Viva Republica"){}
                    Text("개발자")
                        .font(.system(size: 16))
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.gray)
            }
            
        }
    }
}

struct TossSectionFive: View {
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
                Text("4.4")
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
                    Text("8.4만개의 평가")
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
                        Text(TossReview.TossReviewMockData[index].customerReviewViewTitle)
                        
                        HStack(spacing: 5){
                            ForEach(0..<5) { _ in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 13)
                            }
                            
                            Text(TossReview.TossReviewMockData[index].customerReviewViewDateLabel)
                                .font(.system(size: 16))
                                .padding(.leading, 5)
                                .foregroundStyle(.gray)
                            
                            Text("-")
                                .foregroundStyle(.gray)
                                .font(.system(size: 16))
                            Text(TossReview.TossReviewMockData[index].customerNameLabel)
                                .foregroundStyle(.gray)
                                .font(.system(size: 16))
                        }
                        
                        Text(TossReview.TossReviewMockData[index].customerReviewLabel)
                            .font(.system(size: 16))
                            .foregroundStyle(.gray)
                            .lineLimit(2)
                            .padding(.bottom, 10)
                        
                        HStack(spacing: 10){
                            Text(TossReview.TossReviewMockData[index].developerReviewViewTitle)
                                .font(.system(size: 16))
                            Text(TossReview.TossReviewMockData[index].developerReviewViewDateLabel)
                                .font(.system(size: 16))
                                .foregroundStyle(.gray)
                        }
                        
                        Text(TossReview.TossReviewMockData[index].developerReviewLabel)
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
