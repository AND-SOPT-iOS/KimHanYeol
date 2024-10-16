//
//  DetailViewController.swift
//  35-Seminar
//
//  Created by OneTen on 10/5/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    // 텍스트필드
    private let titleTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "텍스트를 넘겨주세요"
        textField.clearButtonMode = .whileEditing
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.borderWidth = 1
        textField.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 16.0, height: 0.0))
        textField.leftViewMode = .always
        return textField
    }()

    // 뒤로 가기 버튼
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setTitle("이전 화면으로", for: .normal)
        button.backgroundColor = .tintColor
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setUI()
        setLayout()
    }
    
    
    private func setStyle() {
        self.view.backgroundColor = .white
    }
    
    private func setUI() {
        [titleTextField, backButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview($0)
        }
    }
    
    // UI 배치
    private func setLayout() {
        NSLayoutConstraint.activate(
            [
                backButton.topAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 20
                ),
                backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                backButton.heightAnchor.constraint(equalToConstant: 44),
                backButton.widthAnchor.constraint(equalToConstant: 300),
                
                titleTextField.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
                titleTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                titleTextField.heightAnchor.constraint(equalToConstant: 44),
                titleTextField.widthAnchor.constraint(equalToConstant: 300),
                
            ]
        )
    }
    
    @objc func backButtonTapped() {

    }
    
    
}
