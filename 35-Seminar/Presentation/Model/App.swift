//
//  App.swift
//  35-Seminar
//
//  Created by OneTen on 10/28/24.
//

import UIKit

struct App: Identifiable {
    var id: UUID
    let iconImage: UIImage
    let ranking: Int
    let title: String
    let subTitle: String? // 없을 경우 카테고리명을 표기함
    let category: AppCategory
    let downloadState: DownloadState
    let price: Int
    let backgroundImage: UIImage? // collectionView에 사용
    let inAppPrice: Bool
    
    // FreeApps Mock Data
    static let freeApps: [App] = [
        App(
            id: UUID(),
            iconImage: .silson24,
            ranking: 1,
            title: "실손24",
            subTitle: "간편한 실손보험 청구",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .toss,
            ranking: 2,
            title: "토스",
            subTitle: "금융이 쉬워진다",
            category: .finance,
            downloadState: .downloaded,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .naverpay,
            ranking: 3,
            title: "네이버페이",
            subTitle: "지갑 없이 매장에서 결제",
            category: .finance,
            downloadState: .update,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .kakaopay,
            ranking: 4,
            title: "카카오페이",
            subTitle: "마음 놓고 금융하다",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .kbpay,
            ranking: 5,
            title: "KB Pay",
            subTitle: "모든 금융을 한번에, 한손에, 한눈에 담다",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .monimo,
            ranking: 6,
            title: "monimo (모니모, 삼성금융네트웍스)",
            subTitle: "모이는 금융, 커지는 혜택!",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .kbstarbank,
            ranking: 7,
            title: "KB스타뱅킹",
            subTitle: "모바일신분증, 결제, 통신도 다 되는 은행",
            category: .finance,
            downloadState: .reDownload,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .travelwallet,
            ranking: 8,
            title: "트래블월렛 - travel Pay",
            subTitle: "페이에 세계를 담다",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .namu,
            ranking: 9,
            title: "나무증권 - NH투자증권 MTS",
            subTitle: "쉽고 편한 국내주식, 해외주식",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .onetwo,
            ranking: 10,
            title: "한투-한국투자증권,MTS,투자,증권,해외주식,주식",
            subTitle: "한국투자:대방,공모주,펀드,연금,",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .kakaobank,
            ranking: 11,
            title: "카카오뱅크",
            subTitle: "이미 모두의 은행",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .solbank,
            ranking: 12,
            title: "신한 SOL 뱅크 - 신한은행 스마트폰뱅킹",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .nhbank,
            ranking: 13,
            title: "NH올원뱅크",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .hanabank,
            ranking: 14,
            title: "하나은행, 하나원큐는 돈기운 가득한 은행 앱",
            subTitle: "송금, 해외송금, 유학생송금",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .kbank,
            ranking: 15,
            title: "케이뱅크 (Kbank)",
            subTitle: "make money",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .v3,
            ranking: 16,
            title: "V3 Mobile Plus",
            subTitle: "코스콤 통합인증 / 알림창 메시지 서비스",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .mobileTmoney,
            ranking: 17,
            title: "모바일티머니",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .hyundaicard,
            ranking: 18,
            title: "현대카드",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .solpay,
            ranking: 19,
            title: "신한 SOL페이 - 신한카드 대표플랫폼",
            subTitle: "결제부터 자산관리, 다양한 금융",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .hyundaidepartment,
            ranking: 20,
            title: "현대백화점",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: false
        )
        
    ]
    
    // PaidApps Mock Data
    static let paidApps: [App] = [
        App(
            id: UUID(),
            iconImage: .weeple,
            ranking: 1,
            title: "위플 가계부 Pro",
            subTitle: "아이폰 사용자 수 1위 가계부",
            category: .finance,
            downloadState: .download,
            price: 14000,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .easymoneybook,
            ranking: 2,
            title: "편한가계부 (광고제거)",
            subTitle: "국내 1위 가계부",
            category: .finance,
            downloadState: .download,
            price: 8800,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .membershipwidget,
            ranking: 3,
            title: "멤버십 위젯 Pro",
            subTitle: "멤버십, 쿠폰, 포인트를 한번에 빠르게 할인/적립",
            category: .finance,
            downloadState: .download,
            price: 4400,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .securitywidget,
            ranking: 4,
            title: "보안카드 위젯",
            subTitle: "초싀드 계좌이체",
            category: .finance,
            downloadState: .download,
            price: 3300,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .bafinancialcalculator,
            ranking: 5,
            title: "Ba Financial Calculator (PRO)",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 4400,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .myanmarmarket,
            ranking: 6,
            title: "Myanmar Market Price Pro",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 4400,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .costit,
            ranking: 7,
            title: "코스트잇",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 1100,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .baii,
            ranking: 8,
            title: "BA II Plus Inancial Calc",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 22000,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .easymoneybookclassic,
            ranking: 9,
            title: "편한가계부 Classic (+ PC 가계부 )",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 8800,
            backgroundImage: nil,
            inAppPrice: false
        )
    ]
    
    // CollectionView Apps Mock Data
    static let collectionViewApps: [App] = [
        App(
            id: UUID(),
            iconImage: .currenzy,
            ranking: 1,
            title: "Currenzy",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 6600,
            backgroundImage: .currenzybackground,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .fortunecity,
            ranking: 2,
            title: "Fortune City - A Finance App",
            subTitle: "좋은 소비습관을 만들어 보세요!",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: .fortunecitybackground,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .elk,
            ranking: 3,
            title: "Elk - 여행 환율 변환기",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: .elkbackground,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .taxnote,
            ranking: 4,
            title: "Taxnote 부기 및 회계 앱",
            subTitle: "자영업자용 세금 환급을 위한 부기 및 회계 앱",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: .taxnotebackground,
            inAppPrice: true
        )
    ]
    
    // EssentialApps Mock Data
    static let essentialApps: [App] = [
        App(
            id: UUID(),
            iconImage: .ifinance5,
            ranking: 1,
            title: "iFinance 5",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 29000,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .moneycoach,
            ranking: 2,
            title: "Money Coach Budget Managet",
            subTitle: "Expense Tracker, Bill Planner",
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .finances2,
            ranking: 3,
            title: "Finances 2",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .moneycontrol,
            ranking: 4,
            title: "MoneyControl Spending Tracker",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .ynab,
            ranking: 5,
            title: "YNAB",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .splitwise,
            ranking: 6,
            title: "Splitwise",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .spendy,
            ranking: 7,
            title: "Spendy",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 4400,
            backgroundImage: nil,
            inAppPrice: false
        ),
        App(
            id: UUID(),
            iconImage: .cashcounter,
            ranking: 8,
            title: "CashCounter",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: true
        ),
        App(
            id: UUID(),
            iconImage: .macaw,
            ranking: 9,
            title: "Macaw: Budget & Save Money",
            subTitle: nil,
            category: .finance,
            downloadState: .download,
            price: 0,
            backgroundImage: nil,
            inAppPrice: true
        )
        
    ]
    
    
    
    
    
}
