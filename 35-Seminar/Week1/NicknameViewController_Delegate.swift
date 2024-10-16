//
//  NicknameViewController_Delegate.swift
//  35-Seminar
//
//  Created by OneTen on 10/12/24.
//

import UIKit

class NicknameViewController_Delegate: UIViewController {
    
    weak var delegate: NicknameDelegate?
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임을 입력해주세요."
        label.font = .systemFont(ofSize: 16)
        label.textColor = .tintColor
        label.textAlignment = .center
        return label
    }()
    
    private let nicknameTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "닉네임을 입력해주세요"
        textField.clearButtonMode = .whileEditing
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.borderWidth = 1
        return textField
    }()
    
    private lazy var settingButton: UIButton = {
        let button = UIButton()
        button.setTitle("뒤로가기", for: .normal)
        button.backgroundColor = .tintColor
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(settingButtonTapped), for: .touchUpInside)
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
        [
            titleLabel,
            nicknameTextField,
            settingButton
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
    }
    
    private func setLayout() {
        NSLayoutConstraint.activate(
            [
                titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
                titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                
                nicknameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
                nicknameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                nicknameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                nicknameTextField.heightAnchor.constraint(equalToConstant: 48),
                
                settingButton.topAnchor.constraint(equalTo: nicknameTextField.bottomAnchor, constant: 20),
                settingButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                settingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
                settingButton.heightAnchor.constraint(equalToConstant: 48)
            ]
        )
    }
    
    @objc func settingButtonTapped() {
        if let nickName = nicknameTextField.text {
            delegate?.dataBind(nickname: nickName)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
}

protocol NicknameDelegate: AnyObject {
    func dataBind(nickname: String)
}
