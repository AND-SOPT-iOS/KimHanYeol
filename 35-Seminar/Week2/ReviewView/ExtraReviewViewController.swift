//
//  ExtraReviewView.swift
//  35-Seminar
//
//  Created by OneTen on 10/16/24.
//

import UIKit

class ExtraReviewViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let label = UILabel()
        label.text = "리뷰 모두 보기 페이지"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        
        view.addSubview(label)
        label.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    
}
