//
//  ThirdInfoView.swift
//  35-Seminar
//
//  Created by OneTen on 10/16/24.
//

import UIKit
import SnapKit

class ThirdInfoView: UIView {
    
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
        
        label.text = "연령"
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    private var secondLabel: UILabel = {
        let label = UILabel()
        
        label.text = "4+"
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    private var thirdLabel: UILabel = {
        let label = UILabel()
        
        label.text = "세"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    private var divider: UIView = {
        let view = UIView()
        view.backgroundColor = .gray.withAlphaComponent(0.3)
        return view
    }()
    
    private func setUI() {
        self.addSubview(firstLabel)
        self.addSubview(secondLabel)
        self.addSubview(thirdLabel)
        self.addSubview(divider)
        
        firstLabel.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
        
        secondLabel.snp.makeConstraints {
            $0.top.equalTo(firstLabel.snp.bottom).offset(10)
            $0.centerX.equalToSuperview()
        }
        
        thirdLabel.snp.makeConstraints {
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
