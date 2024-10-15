//
//  FirstInfoView.swift
//  35-Seminar
//
//  Created by OneTen on 10/16/24.
//

import UIKit
import SnapKit

class FirstInfoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    private var firstLabel: UILabel = {
        let label = UILabel()
        
        label.text = "8.4만개의 평가"
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    private var secondLabel: UILabel = {
        let label = UILabel()
        
        label.text = "4.4"
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    // 별점
    private var starsStackView: UIStackView = {
        let view = UIStackView()
        
        view.axis = .horizontal
        view.spacing = 1
        view.alignment = .center
        
        // 별 4개
        for _ in 0..<4 {
            let star = UIImageView()
            star.image = UIImage(systemName: "star.fill")
            star.tintColor = .gray
            star.snp.makeConstraints { $0.size.equalTo(16) } // 크기를 16으로 설정
            view.addArrangedSubview(star)
        }
        
        // 반 별
        let halfStar = UIImageView()
        halfStar.image = UIImage(systemName: "star.leadinghalf.filled")
        halfStar.tintColor = .gray
        halfStar.snp.makeConstraints { $0.size.equalTo(16) } // 크기를 16으로 설정
        view.addArrangedSubview(halfStar)
        
        return view
    }()
    
    private var divider: UIView = {
        let view = UIView()
        view.backgroundColor = .gray.withAlphaComponent(0.3)
        return view
    }()
    
    private func setUI() {
        self.addSubview(firstLabel)
        self.addSubview(secondLabel)
        self.addSubview(starsStackView)
        self.addSubview(divider)
        
        firstLabel.snp.makeConstraints {
            $0.top.equalToSuperview()
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
        
        divider.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.height.equalToSuperview()
            $0.width.equalTo(1)
        }
        
    }
    
}
