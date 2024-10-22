//
//  TossView.swift
//  35-Seminar
//
//  Created by OneTen on 10/12/24.
//

import UIKit
import SnapKit

class TossView: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        scrollView.delegate = self
    }
    
    private var navigationBar = UINavigationBar()
    
    private var scrollView = UIScrollView()
    private var contentView = UIView()
    private var headerView = HeaderView()
    
    private var infoView = UIView()
    private var firstInfoView = FirstInfoView()
    private var secondInfoView = SecondInfoView()
    private var thirdInfoView = ThirdInfoView()
    
    private var newIssueView = NewIssueView()
    private var previewView = PreviewView()
    private var developerView = DeveloperView()
    
    private var reviewView = UIView()
    private var firstReviewView = FirstReviewView()
    private var secondReviewView = SecondReviewView()
    
    
    private func setUI() {
        self.view.addSubview(navigationBar)
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        [headerView, infoView, newIssueView, previewView, developerView, reviewView].forEach { contentView.addSubview($0) }
        [firstInfoView, secondInfoView, thirdInfoView].forEach { infoView.addSubview($0) }
        [firstReviewView, secondReviewView].forEach { reviewView.addSubview($0) }
        
        setUINavigationBar(tossImageView: tossImageView, openButton: openButton)
        
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            // 스크롤이 가능하도록 contentView의 height를 정확히 설정
            $0.height.equalToSuperview().priority(.low)
        }
        
        headerView.snp.makeConstraints {
            $0.leading.equalTo(contentView).inset(20)
            $0.trailing.equalTo(contentView).inset(20)
            $0.top.equalTo(contentView)
            $0.height.equalTo(130)
        }
        
        infoView.snp.makeConstraints {
            $0.leading.equalTo(headerView)
            $0.trailing.equalTo(headerView)
            $0.top.equalTo(headerView.snp.bottom).offset(40)
            $0.height.equalTo(100)
        }
        
        firstInfoView.snp.makeConstraints {
            $0.leading.equalTo(infoView)
            $0.top.equalTo(infoView)
            $0.height.equalTo(100)
            $0.width.equalTo(120)
        }
        
        secondInfoView.snp.makeConstraints {
            $0.leading.equalTo(firstInfoView.snp.trailing)
            $0.top.equalTo(infoView)
            $0.height.equalTo(100)
            $0.width.equalTo(120)
        }
        
        thirdInfoView.snp.makeConstraints {
            $0.leading.equalTo(secondInfoView.snp.trailing)
            $0.top.equalTo(infoView)
            $0.height.equalTo(100)
            $0.width.equalTo(120)
        }
        
        newIssueView.snp.makeConstraints {
            $0.leading.equalTo(infoView)
            $0.trailing.equalTo(infoView)
            $0.top.equalTo(infoView.snp.bottom).offset(10)
            $0.height.equalTo(150)
        }
        
        previewView.snp.makeConstraints {
            $0.leading.equalTo(newIssueView)
            $0.trailing.equalTo(newIssueView)
            $0.top.equalTo(newIssueView.snp.bottom)
            $0.width.equalTo(headerView)
            $0.height.equalTo(700)
        }
        
        developerView.snp.makeConstraints {
            $0.leading.equalTo(previewView)
            $0.trailing.equalTo(previewView)
            $0.top.equalTo(previewView.snp.bottom)
            $0.height.equalTo(50)
        }
        
        reviewView.snp.makeConstraints {
            $0.leading.equalTo(developerView)
            $0.trailing.equalTo(developerView)
            $0.top.equalTo(developerView.snp.bottom).offset(20)
            $0.height.equalTo(500)
            
            // 중요: contentView의 끝에 맞춰 설정
            // 이거 안 하니까 자꾸 스크롤이 끝까지 안되고 다시 위로 튕김
            $0.bottom.equalTo(contentView.snp.bottom).inset(20)
        }
        
        firstReviewView.snp.makeConstraints {
            $0.leading.equalTo(reviewView)
            $0.top.equalTo(reviewView)
            $0.height.equalTo(120)
            $0.width.equalTo(headerView)
        }
        
        secondReviewView.snp.makeConstraints {
            $0.leading.equalTo(firstReviewView)
            $0.top.equalTo(firstReviewView.snp.bottom).offset(20)
            $0.bottom.equalTo(reviewView.snp.bottom)
            $0.width.equalTo(headerView)
        }
        
        
    }
    
    
    private let tossImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "TossImage")
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    
    private var openButton: UIButton = {
        let button = UIButton()
        button.setTitle("열기", for: .normal)
        button.backgroundColor = .tintColor
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.layer.cornerRadius = 20
        return button
    }()
    
}

extension TossView: UIScrollViewDelegate {
    
    func setUINavigationBar(tossImageView: UIImageView, openButton: UIButton) {
        // Navigation Bar에 Custom TitleView로 이미지 넣기
        let titleView = UIView()
        titleView.addSubview(tossImageView)
        titleView.addSubview(openButton)
        
        tossImageView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.centerX.equalToSuperview().offset(-15)
            $0.width.height.equalTo(44)
        }
        
        openButton.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.width.equalTo(80)
        }
        
        navigationItem.titleView = titleView
        
        titleView.snp.makeConstraints {
            $0.height.equalTo(44)
            $0.width.equalTo(1000)
        }
        
    }
    
    // 스크롤하면 navigationBar 보이게
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let offsetY = scrollView.contentOffset.y
        
        let imageSizeAlpha = min(1, offsetY / 100)
        let buttonAlpha = min(1, offsetY / 100)
        
        tossImageView.alpha = imageSizeAlpha
        openButton.alpha = buttonAlpha
    }
    
    
}

//#Preview {
//    TossView()
//}
