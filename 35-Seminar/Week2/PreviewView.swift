//
//  PreviewView.swift
//  35-Seminar
//
//  Created by OneTen on 10/16/24.
//

import UIKit
import SnapKit

class PreviewView: UIView {
    
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
        label.text = "미리보기"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.textColor = .white

        return label
    }()
    
    private var secondLabel: UILabel = {
        let label = UILabel()
        label.text = "토스뱅크, 토스증권 서비스를 이용하시려면 토스 앱 설치가 필요합니다."
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .white
        label.numberOfLines = 2
        
        return label
    }()
    
    private var thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "- 내 금융 현황을 한눈에, 홈*소비"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .white

        return label
    }()
    
    private var extraButton: UIButton = {
        let button = UIButton()
        button.setTitle("더 보기", for: .normal)
        button.setTitleColor(.tintColor, for: .normal)
        
        return button
    }()
    
    private var previewImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "PreviewImage")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    private func setUI() {
        [firstLabel, secondLabel, thirdLabel, extraButton, previewImageView].forEach { self.addSubview($0) }
        
        firstLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
        }
        
        previewImageView.snp.makeConstraints {
            $0.leading.equalTo(firstLabel)
            $0.top.equalTo(firstLabel.snp.bottom).offset(10)
            $0.width.equalTo(300)
        }
        
        secondLabel.snp.makeConstraints {
            $0.leading.equalTo(previewImageView)
            $0.width.equalToSuperview()
            $0.top.equalTo(previewImageView.snp.bottom).offset(20)
        }
        
        thirdLabel.snp.makeConstraints {
            $0.leading.equalTo(secondLabel)
            $0.top.equalTo(secondLabel.snp.bottom).offset(10)
        }
        
        extraButton.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.top.equalTo(secondLabel.snp.bottom)
        }
        
    }
    
}
