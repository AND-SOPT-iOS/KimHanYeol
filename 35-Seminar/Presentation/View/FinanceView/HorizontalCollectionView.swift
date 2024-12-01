//
//  HorizontalCollectionView.swift
//  35-Seminar
//
//  Created by OneTen on 10/30/24.
//

import UIKit
import SwiftUI

import SnapKit

class HorizontalCollectionView: UITableViewCell {
    
    private let collectionView: UICollectionView
    private let flowLayout = UICollectionViewFlowLayout()
    private let itemSizeWidth = UIScreen.main.bounds.width
    private let itemSizeHeight = UIScreen.main.bounds.height / 3
    private let titleLabel = UILabel()
    private let subTitleLabel = UILabel()
    private let viewAllButton = UIButton()
    
    private var apps: [[App]] = []
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = .init(width: itemSizeWidth, height: itemSizeHeight)
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
               
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setStyle()
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setStyle() {
        collectionView.do {
            $0.register(HorizontalCollectionViewCell.self, forCellWithReuseIdentifier: HorizontalCollectionViewCell.cellIdentifier)
            $0.delegate = self
            $0.dataSource = self
            $0.showsHorizontalScrollIndicator = false
        }
        
        titleLabel.do {
            $0.font = .systemFont(ofSize: 28, weight: .semibold)
        }
        
        subTitleLabel.do {
            $0.font = .systemFont(ofSize: 16, weight: .semibold)
            $0.textColor = .gray
        }
        
        viewAllButton.do {
            $0.setTitle("모두 보기", for: .normal)
            $0.setTitleColor(.tintColor, for: .normal)
            $0.addTarget(self, action: #selector(viewAllButtonTapped), for: .touchUpInside)
        }
    }
    
    private func setUI() {
        contentView.addSubviews(titleLabel, subTitleLabel, collectionView, viewAllButton)
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(20)
            $0.top.equalToSuperview().offset(10)
            $0.width.equalToSuperview().inset(20)
        }
        
        subTitleLabel.snp.makeConstraints {
            $0.leading.equalTo(titleLabel)
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
            $0.width.equalTo(titleLabel)
        }
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(subTitleLabel.snp.bottom)
            $0.width.equalTo(itemSizeWidth)
            $0.height.equalTo(itemSizeHeight)
        }
        
        viewAllButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(20)
            $0.centerY.equalTo(titleLabel)
        }
    }
    
    func configure(with app: [App], index: Int) {
        apps = stride(from: 0, to: app.count, by: 3).map {
            Array(app[$0 ..< Swift.min($0 + 3, app.count)])
        }
        
        if index == 1 {
            titleLabel.text = "필수 금융앱"
            subTitleLabel.text = "App Store 에디터가 직접 골랐습니다"
        } else if index == 2 {
            titleLabel.text = "유료순위"
            subTitleLabel.text = ""
        } else {
            titleLabel.text = "무료순위"
            subTitleLabel.text = ""
        }
        
    }
    
    func viewController() -> UIViewController? {
        var nextResponder: UIResponder? = self
        while let responder = nextResponder {
            if let vc = responder as? UIViewController {
                return vc
            }
            nextResponder = responder.next
        }
        return nil
    }
   
   @objc private func viewAllButtonTapped() {
       guard let viewController = viewController() else { return }
       let nextViewController = UIHostingController(rootView: PopularViewSwiftUI())
       
       viewController.navigationController?.pushViewController(nextViewController, animated: true)
   }
    
}

extension HorizontalCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalCollectionViewCell.cellIdentifier, for: indexPath) as? HorizontalCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let app = apps[indexPath.row]
        cell.configure(with: app)
        
        return cell
    }
    
    
}


