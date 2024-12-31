//
//  SearchView.swift
//  35-Seminar
//
//  Created by OneTen on 12/1/24.
//
//  RxSwift 스터디 과제를 위해 유킷으로 구현!

import UIKit
import SwiftUI

import RxSwift
import RxCocoa
import SnapKit
import Then

class SearchView: UIViewController {
    private let apps: [App] = App.collectionViewApps + App.essentialApps + App.freeApps + App.paidApps
    
    private let searchbar = UISearchBar()
    private let tableView = UITableView()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setStyle()
        setLayout()
        bind()
    }
    
    private func setStyle() {
        searchbar.do {
            $0.placeholder = "검색어를 입력해주세요."
            $0.searchBarStyle = .minimal
            $0.searchTextField.layer.cornerRadius = 10
        }
        
        tableView.do {
            $0.register(SearchViewCell.self, forCellReuseIdentifier: SearchViewCell.cellIdentifier)
            $0.delegate = self
        }
    }
    
    private func setUI() {
        view.addSubviews(searchbar, tableView)
    }
    
    private func setLayout() {
        searchbar.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.horizontalEdges.equalToSuperview()
            $0.height.equalTo(50)
        }
        
        tableView.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview()
            $0.top.equalTo(searchbar.snp.bottom)
            $0.bottom.equalToSuperview()
        }
    }
    
    private func bind() {
        searchbar.rx.text.orEmpty
            .distinctUntilChanged()
            .debounce(.milliseconds(100), scheduler: MainScheduler.instance)
            .map { query in
                self.apps.filter { app in
                    app.title.lowercased().contains(query.lowercased()) || query.isEmpty
                }
            }
            .bind(to: tableView.rx.items(cellIdentifier: SearchViewCell.cellIdentifier, cellType: SearchViewCell.self)) { _, app, cell in
                cell.configure(with: app)
            }
            .disposed(by: disposeBag)
        
        
        tableView.rx.modelSelected(App.self)
            .filter { $0.title == "토스" }
            .subscribe(onNext: { [weak self] selectedItem in
                let tossViewController = UIHostingController(rootView: TossView())
                self?.navigationController?.pushViewController(tossViewController, animated: true)
            })
            .disposed(by: disposeBag)
        
    }
    
}

extension SearchView: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

#Preview {
    MainView()
}
