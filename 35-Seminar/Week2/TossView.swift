//
//  TossView.swift
//  35-Seminar
//
//  Created by OneTen on 10/12/24.
//

import UIKit
import SnapKit

class TossView: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    private let scrollView = UIScrollView()
    
    private var contentView = UIView()
    
    private let headerView = HeaderView()
    
    private let infoView: UIView = {
        let view = UIView()
        
        return view
    }()
    
//    private let firstInfoView: UIView = {
//        let view = UIView()
//        
//        let firstLabel = UILabel()
//        firstLabel.text = "8.4만개의 평가"
//        firstLabel.font = .systemFont(ofSize: 12)
//        firstLabel.textColor = .gray
//        
//        let secondLabel = UILabel()
//        secondLabel.text = "4.4"
//        secondLabel.font = .systemFont(ofSize: 24)
//        secondLabel.textColor = .gray
//        
//        let star = UIImageView()
//        star.image = UIImage(systemName: "star.fill")
//        
//        let halfStar = UIImageView()
//        halfStar.image = UIImage(systemName: "star.leadinghalf.filled")
//        
//        view.addSubview(firstLabel)
//        view.addSubview(secondLabel)
//        view.addSubview(star)
//        view.addSubview(halfStar)
//        
//        firstLabel.snp.makeConstraints {
//            $0.top.equalTo(view.snp.top).inset(10)
//            $0.centerX.equalToSuperview()
//        }
//        
//        secondLabel.snp.makeConstraints {
//            $0.top.equalTo(firstLabel.snp.bottom).offset(10)
//            $0.centerX.equalToSuperview()
//        }
//        
//        star.snp.makeConstraints {
//            $0.top.equalTo(secondLabel.snp.bottom).offset(10)
//            $0.centerX.equalToSuperview()
//        }
//        
//        return view
//    }()
    
    private let firstInfoView: UIView = {
        let view = UIView()

        let firstLabel = UILabel()
        firstLabel.text = "8.4만개의 평가"
        firstLabel.font = .systemFont(ofSize: 14, weight: .semibold)
        firstLabel.textColor = .gray

        let secondLabel = UILabel()
        secondLabel.text = "4.4"
        secondLabel.font = .systemFont(ofSize: 32, weight: .semibold)
        secondLabel.textColor = .gray

        // 별점
        let starsStackView = UIStackView()
        starsStackView.axis = .horizontal
        starsStackView.spacing = 1
        starsStackView.alignment = .center

        // 별 4개
        for _ in 0..<4 {
            let star = UIImageView()
            star.image = UIImage(systemName: "star.fill")
            star.tintColor = .gray
            star.snp.makeConstraints { $0.size.equalTo(16) } // 크기를 16으로 설정
            starsStackView.addArrangedSubview(star)
        }

        // 반 별
        let halfStar = UIImageView()
        halfStar.image = UIImage(systemName: "star.leadinghalf.filled")
        halfStar.tintColor = .gray
        halfStar.snp.makeConstraints { $0.size.equalTo(16) } // 크기를 16으로 설정
        starsStackView.addArrangedSubview(halfStar)

        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        view.addSubview(starsStackView)

        firstLabel.snp.makeConstraints {
            $0.top.equalTo(view.snp.top).inset(10)
            $0.centerX.equalToSuperview()
        }

        secondLabel.snp.makeConstraints {
            $0.top.equalTo(firstLabel.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }

        starsStackView.snp.makeConstraints {
            $0.top.equalTo(secondLabel.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }

        return view
    }()
    
    private func setUI() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(headerView)
        
        contentView.addSubview(infoView)

        infoView.addSubview(firstInfoView)
        
        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        contentView.snp.makeConstraints {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            
            // contentView의 height가 scrollView의 height보다 크거나 같도록 설정
            $0.height.greaterThanOrEqualToSuperview().priority(.low)
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
        
        
        
        
    }
    
}
