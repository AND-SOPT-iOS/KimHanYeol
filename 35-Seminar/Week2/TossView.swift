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

    private var scrollView = UIScrollView()
    
    private var contentView = UIView()
    
    private var headerView = HeaderView()
    
    private var infoView = UIView()
        
    private var firstInfoView = FirstInfoView()
    
    private var secondInfoView = SecondInfoView()
    
    private func setUI() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(headerView)
    
        contentView.addSubview(infoView)
        infoView.addSubview(firstInfoView)
        infoView.addSubview(secondInfoView)
        
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
        
        secondInfoView.snp.makeConstraints {
            $0.leading.equalTo(firstInfoView.snp.trailing)
            $0.top.equalTo(infoView)
            $0.height.equalTo(100)
            $0.width.equalTo(120)
        }
        
        
    }
    
}
