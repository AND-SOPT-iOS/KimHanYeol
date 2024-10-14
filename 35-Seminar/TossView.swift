//
//  TossView.swift
//  35-Seminar
//
//  Created by OneTen on 10/12/24.
//

import UIKit
import SnapKit

class TossView: UIViewController {
    
    private let scrollView : UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        
        return scrollView
    }()
    
    
    private var titleView : UIView = {
        let titleView = UIView()
        titleView.backgroundColor = .gray
        
        return titleView
    }()
    
    private var tossImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "TossImage")
        
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    private func setUI() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(titleView)
        
        titleView.addSubview(tossImageView)
        
        

        scrollView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        titleView.snp.makeConstraints {
            $0.edges.equalTo(scrollView)
            $0.width.equalTo(scrollView)
            $0.height.equalTo(200)
        }
        
        tossImageView.snp.makeConstraints {
            $0.top.leading.equalTo(titleView)
            $0.height.equalTo(200)
            $0.width.equalTo(200)
        }
        
    }
    
    
    
}

#Preview {
    TossView()
}
