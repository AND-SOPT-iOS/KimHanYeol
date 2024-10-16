//
//  NewIssueView.swift
//  35-Seminar
//
//  Created by OneTen on 10/16/24.
//

import UIKit
import SnapKit

class NewIssueView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    private var firstLabel: UILabel = {
        let label = UILabel()
        label.text = "새로운 소식"
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.textColor = .white
        
        return label
    }()
    
    private var secondLabel: UILabel = {
        let label = UILabel()
        label.text = "버전 5.183.0"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    private var thirdLabel: UILabel = {
        let label = UILabel()
        label.text = "5일 전"
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    private var versionButton: UIButton = {
        let button = UIButton()
        button.setTitle("버전 기록", for: .normal)
        button.setTitleColor(.tintColor, for: .normal)
        button.addTarget(self, action: #selector(versionButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    private var issueDescription: UILabel = {
        let label = UILabel()
        label.text = "* 구석구석 숨어있던 버그들을 잡았어요. 또 다른 버그가 나타나면 토스 고객센터를 찾아주세요. 늘 열려있답니다. 365일 24시간 언제든지요."
        label.font = .systemFont(ofSize: 16)
        label.textColor = .white
        label.numberOfLines = 3
        
        return label
    }()
    
    private var divider: UIView = {
        let view = UIView()
        view.backgroundColor = .gray.withAlphaComponent(0.3)
        return view
    }()
    
    private func setUI() {
        [firstLabel, secondLabel, thirdLabel, versionButton, issueDescription, divider].forEach { self.addSubview($0) }
        
        firstLabel.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
        }
        
        secondLabel.snp.makeConstraints {
            $0.leading.equalTo(firstLabel)
            $0.top.equalTo(firstLabel.snp.bottom)
        }
        
        versionButton.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.top.equalToSuperview()
        }
        
        thirdLabel.snp.makeConstraints {
            $0.trailing.equalTo(versionButton)
            $0.top.equalTo(versionButton.snp.bottom)
        }
        
        issueDescription.snp.makeConstraints {
            $0.top.equalTo(secondLabel.snp.bottom).offset(10)
            $0.width.equalToSuperview()
        }
        
        divider.snp.makeConstraints {
            $0.top.equalTo(issueDescription.snp.bottom).offset(20)
            $0.height.equalTo(1)
            $0.width.equalToSuperview()
        }
        
    }
    
    // 현재 뷰가 속한 뷰컨트롤러에 접근하기 위한 확장 메서드
    // gpt의 힘으로 작성한 코드.. 이해가 되지 않는다..
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
    
    @objc private func versionButtonTapped() {
        guard let viewController = viewController() else { return }
        let nextViewController = VersionRecordView()
        viewController.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
}
