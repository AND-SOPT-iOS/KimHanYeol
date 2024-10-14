//
//  ViewController.swift
//  35-Seminar
//
//  Created by OneTen on 10/5/24.
//

import UIKit

class ViewController: UIViewController {

    
    // 다음버튼
    private lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("토스", for: .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()

    
    // 실행되면 하는 거
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setUI()
        setLayout()
    }
    
    // 스타일 설정
    private func setStyle() {
        self.view.backgroundColor = .white
    }
    
    // UI 뭐 쓸지
    private func setUI() {
        [
            nextButton,
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview($0)
        }
    }
    
    // MARK: - test3

    
    // UI 배치
    private func setLayout() {
        NSLayoutConstraint.activate(
            [
                nextButton.topAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 20
                ),
                nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                nextButton.heightAnchor.constraint(equalToConstant: 44),
                nextButton.widthAnchor.constraint(equalToConstant: 300),
                
                
            ]
        )
    }
    
    

    
    // 다음 버튼 누르면 실행
    @objc func nextButtonTapped() {
        let nextViewController = TossView()
        self.navigationController?.pushViewController(
            nextViewController,
            animated: true
        )
    }
    

    
}

#Preview {
    ViewController()
}
