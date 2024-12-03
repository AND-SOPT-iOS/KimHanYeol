//
//  FinancialViewModel.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//

import SwiftUI

class FinancialViewModel: ObservableObject {
    @Published var essentialApps: [App] = App.essentialApps
    @Published var collectionViewApps: [App] = App.collectionViewApps
    @Published var freeApps: [App] = App.freeApps
    @Published var paidApps: [App] = App.paidApps
    
    @Published var secondSectionHeader = "필수 금융앱"
    @Published var secondSectionSubHeader = "App Store 에디터가 직접 골랐습니다"
    @Published var thirdSectionHeader = "유료 순위"
    @Published var fourthSectionHeader = "무료 순위"
    
}
