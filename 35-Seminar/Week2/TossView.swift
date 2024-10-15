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
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .black
        return scrollView
    }()
    
    private let headerView = HeaderView()
    
    
    private func setUI() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(headerView)
        
        scrollView.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.verticalEdges.equalToSuperview()
        }
        
        headerView.snp.makeConstraints {
            $0.leading.trailing.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            $0.height.equalTo(130)
        }
        
        
        
    }
    
}
