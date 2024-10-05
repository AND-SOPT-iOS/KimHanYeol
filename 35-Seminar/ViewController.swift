//
//  ViewController.swift
//  35-Seminar
//
//  Created by OneTen on 10/5/24.
//

import UIKit

class ViewController: UIViewController {
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 32)
        label.textColor = .brown
        return label
    }()
    
    private let titleTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "제목을 입력해주세요."
        textField.clearButtonMode = .whileEditing
        textField.layer.borderColor = UIColor.gray.cgColor
        textField.layer.borderWidth = 1
        textField.leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 16.0, height: 0.0))
        textField.leftViewMode = .always
        return textField
    }()
    
    private let contentTextView: UITextView = {
        let textView = UITextView()
        textView.font = .systemFont(ofSize: 14)
        textView.layer.borderColor = UIColor.gray.cgColor
        textView.layer.borderWidth = 1
        textView.layer.cornerRadius = 5
        return textView
    }()
    
    private lazy var nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("다음", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()
    
    // 전환버튼
    private lazy var pushModeToggleButton: UIButton = {
        let button = UIButton()
        button.setTitle("전환 모드 변경", for: .normal)
        button.backgroundColor = .tintColor
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(toggleButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 20
        return button
    }()
    
    
    // 배경 다크모드 전환버튼
    private lazy var darkModeButton: UIButton = {
        let button = UIButton()
        
        button.setTitle("다크모드", for: .normal)
        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(darkModeButtonTapped), for: .touchUpInside)
        button.layer.cornerRadius = 20
        
        return button
    }()
    
    
    // 이미지
    private var imageView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .red
        image.image = UIImage(named: "MainImage")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setStyle()
        setUI()
        setLayout()
    }
    
    private func setStyle() {
        self.view.backgroundColor = .white
        updateUI()
    }
    
    private func setUI() {
        [
            titleLabel,
            titleTextField,
            contentTextView,
            
            imageView,
            
            darkModeButton,
            nextButton,
            pushModeToggleButton
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview($0)
        }
    }
    
    
    private func setLayout() {
        NSLayoutConstraint.activate(
            [
                titleLabel.topAnchor.constraint(
                    equalTo: view.safeAreaLayoutGuide.topAnchor,
                    constant: 20
                ),
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                
                
                titleTextField.topAnchor.constraint(
                    equalTo: titleLabel.bottomAnchor,
                    constant: 20
                ),
                titleTextField.leadingAnchor.constraint(
                    equalTo: view.leadingAnchor,
                    constant: 20
                ),
                titleTextField.trailingAnchor.constraint(
                    equalTo: view.trailingAnchor,
                    constant: -20
                ),
                titleTextField.heightAnchor.constraint(equalToConstant: 40),
                
                
                
                contentTextView.topAnchor.constraint(
                    equalTo: titleTextField.bottomAnchor,
                    constant: 20
                ),
                contentTextView.leadingAnchor.constraint(
                    equalTo: view.leadingAnchor,
                    constant: 20
                ),
                contentTextView.trailingAnchor.constraint(
                    equalTo: view.trailingAnchor,
                    constant: -20
                ),
                contentTextView.heightAnchor.constraint(
                    equalToConstant: 200
                ),
                
                
                imageView.topAnchor.constraint(equalTo: contentTextView.bottomAnchor, constant: 20),
                imageView.leadingAnchor.constraint(
                    equalTo: view.leadingAnchor,
                    constant: 20
                ),
                imageView.trailingAnchor.constraint(
                    equalTo: view.trailingAnchor,
                    constant: -20
                ),
                imageView.heightAnchor.constraint(
                    equalToConstant: 150
                ),
                
                
                darkModeButton.bottomAnchor.constraint(equalTo: nextButton.topAnchor, constant: -20),
                darkModeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                darkModeButton.heightAnchor.constraint(equalToConstant: 44),
                darkModeButton.widthAnchor.constraint(equalToConstant: 300),
                
                
                nextButton.bottomAnchor.constraint(
                    equalTo: pushModeToggleButton.topAnchor,
                    constant: -20
                ),
                nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                nextButton.heightAnchor.constraint(equalToConstant: 44),
                nextButton.widthAnchor.constraint(equalToConstant: 300),
                
                
                
                pushModeToggleButton.bottomAnchor.constraint(
                    equalTo: view.bottomAnchor,
                    constant: -40
                ),
                pushModeToggleButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                pushModeToggleButton.heightAnchor.constraint(equalToConstant: 44),
                pushModeToggleButton.widthAnchor.constraint(equalToConstant: 300),
                
                
            ]
        )
    }
    
    private func updateUI() {
        self.titleLabel.text = pushMode ? "네비게이션" : "모달"
        self.titleTextField.textColor = darkMode ? .white : .black
        self.view.backgroundColor = darkMode ? .black : .white
        self.darkModeButton.setTitle(darkMode ? "라이트모드" : "다크모드", for: .normal)
        self.darkModeButton.backgroundColor = darkMode ? .white : .black
        self.darkModeButton.setTitleColor(darkMode ? .black : .white, for: .normal)
        
    }
    
    @objc func nextButtonTapped() {
        transitionToNextViewController()
    }
    
    private func transitionToNextViewController() {
        let nextViewController = DetailViewController()
        guard let title = titleTextField.text,
              let content = contentTextView.text
        else {
            // 텍스트의 값들이 없으면 함수가 return
            return
        }
        // 존재할 경우 함수를 그대로 실행
        nextViewController.dataBind(
            title: title,
            content: content
        )
        if pushMode {
            self.navigationController?.pushViewController(
                nextViewController,
                animated: true
            )
        } else {
            self.present(
                nextViewController,
                animated: true
            )
        }
    }
    
    private var pushMode = true
    
    private var darkMode = false
    
    @objc func toggleButtonTapped() {
        self.pushMode.toggle()
        self.updateUI()
    }
    
    @objc func darkModeButtonTapped() {
        self.darkMode.toggle()
        self.updateUI()
    }

}
