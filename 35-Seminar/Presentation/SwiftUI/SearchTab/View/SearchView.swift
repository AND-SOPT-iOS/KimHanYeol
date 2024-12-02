//
//  SearchView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//
//  RxSwift 스터디 과제를 위해 유킷으로 구현!

import UIKit

import RxSwift
import RxCocoa
import SnapKit
import Then


class SearchView: UIViewController {
    
    private let apps: [App] = App.collectionViewApps + App.essentialApps + App.freeApps + App.paidApps
    
    private let tableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setStyle()
        setLayout()
    }
    
    private func setStyle() {
        
        tableView.do {
            $0.register(SearchViewCell.self, forCellReuseIdentifier: SearchViewCell.cellIdentifier)
            $0.dataSource = self
            $0.delegate = self
        }
        
    }
    
    private func setUI() {
        
        view.addSubview(tableView)
        
    }
    
    private func setLayout() {
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
    }
    
}

extension SearchView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SearchViewCell.cellIdentifier, for: indexPath) as? SearchViewCell else {
            return UITableViewCell()
        }
        let app = apps[indexPath.row]
        cell.configure(with: app)
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
}

#Preview {
    SearchView()
}
