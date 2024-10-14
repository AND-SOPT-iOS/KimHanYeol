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
    
    private let scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .black
        
        return scrollView
    }()
    
    
    private var headerView : UIView = {
        let headerView = UIView()
//        headerView.backgroundColor = .gray
        
        return headerView
    }()
    
    
    private var tossImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "TossImage")
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    
    private var tossTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "토스"
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        label.textColor = .white
        
        return label
    }()
    
    private var tossDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "금융이 쉬워진다"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .gray
        
        return label
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
    
    private var shareButton: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "square.and.arrow.up")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private var divider: UIView = {
       let view = UIView()
        view.backgroundColor = .gray.withAlphaComponent(0.3)
        
        return view
    }()
    
    
    private func setUI() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(headerView)
        
        headerView.addSubview(tossImageView)
        headerView.addSubview(tossTitleLabel)
        headerView.addSubview(tossDescriptionLabel)
        headerView.addSubview(openButton)
        headerView.addSubview(shareButton)
        
        headerView.addSubview(divider)
        
        scrollView.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.verticalEdges.equalToSuperview()
        }
        
        headerView.snp.makeConstraints {
            $0.leading.equalTo(scrollView)
            $0.trailing.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            $0.height.equalTo(tossImageView)
        }
        
        tossImageView.snp.makeConstraints {
            $0.leading.equalTo(headerView)
            $0.height.equalTo(130)
            $0.width.equalTo(130)
        }
        
        tossTitleLabel.snp.makeConstraints {
            $0.leading.equalTo(tossImageView.snp.trailing).offset(20)
        }

        tossDescriptionLabel.snp.makeConstraints {
            $0.leading.equalTo(tossImageView.snp.trailing).offset(20)
            $0.top.equalTo(tossTitleLabel.snp.bottom)
        }
        
        openButton.snp.makeConstraints {
            $0.leading.equalTo(tossImageView.snp.trailing).offset(20)
            $0.bottom.equalTo(headerView.snp.bottom)
            $0.width.equalTo(80)
        }
        
        shareButton.snp.makeConstraints {
            $0.trailing.equalTo(headerView.snp.trailing)
            $0.bottom.equalTo(headerView.snp.bottom).offset(-2)
            $0.size.equalTo(30)
        }
        
        divider.snp.makeConstraints {
            $0.top.equalTo(headerView.snp.bottom).offset(20)
            $0.height.equalTo(1)
            $0.width.equalTo(headerView.snp.width)
        }
        
        
    }
    
    
    
}
