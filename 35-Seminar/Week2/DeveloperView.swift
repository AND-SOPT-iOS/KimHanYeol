//
//  DeveloperView.swift
//  35-Seminar
//
//  Created by OneTen on 10/16/24.
//

import UIKit
import SnapKit

class DeveloperView: UIView {
    
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
        label.text = "Viva Republica"
        label.textColor = .tintColor
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private var secondLabel: UILabel = {
        let label = UILabel()
        label.text = "개발자"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        
        return label
    }()
    
    private var chevronImage: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(systemName: "chevron.right")
        imageview.tintColor = .gray
        
        return imageview
    }()
    
    private func setUI() {
        [firstLabel, secondLabel, chevronImage].forEach { self.addSubview($0) }
        
        firstLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview().inset(10)
        }
        
        secondLabel.snp.makeConstraints {
            $0.leading.equalTo(firstLabel)
            $0.top.equalTo(firstLabel.snp.bottom)
        }
        
        chevronImage.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
        
    }
    
}
