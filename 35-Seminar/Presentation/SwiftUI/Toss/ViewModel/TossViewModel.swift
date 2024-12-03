//
//  TossViewModel.swift
//  35-Seminar
//
//  Created by OneTen on 12/3/24.
//

import SwiftUI

class TossViewModel: ObservableObject {
    
    // MARK: - Section One
    @Published var title = "토스"
    @Published var subTitle = "금융이 쉬워진다"
    
    
    // MARK: - Section Four
    @Published var description = "토스뱅크, 토스증권 서비스를 이용하시려면 토스 앱 설치가 필요합니다."
    @Published var subDescription = "내 금융 현황을 한눈에, 홈,소비"
    
    
    // MARK: - Section Five
    @Published var averageScore = "4.4"
    @Published var numberOfEvaluate = "8.4만개의 평가"
    @Published var review = TossReview.TossReviewMockData
}
