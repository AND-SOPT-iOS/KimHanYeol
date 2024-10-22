//
//  SecondReviewView.swift
//  35-Seminar
//
//  Created by OneTen on 10/16/24.
//

import UIKit
import SnapKit

class SecondReviewView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
    }
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "탭하여 평가하기:"
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.textColor = .gray
        
        return label
    }()
    
    private var starStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 10
        
        for _ in 0..<5 {
            let star = UIImageView(image:UIImage(systemName: "star"))
            star.snp.makeConstraints { $0.size.equalTo(32) }
            star.contentMode = .scaleAspectFit
            star.tintColor = .tintColor
            stackView.addArrangedSubview(star)
        }
        
        return stackView
    }()
    
    private var reviewSection: UIView = {
        let view = UIView()
        
        let customerReviewView: UIView = {
            let view = UIView()
            
            let firstLabel = UILabel()
            firstLabel.text = "토스 UX 전버전으로 해주세요"
            firstLabel.textColor = .white
            firstLabel.font = .systemFont(ofSize: 16, weight: .semibold)
            
            let stackView = UIStackView()
            stackView.axis = .horizontal
            for _ in 0..<5 {
                let star = UIImageView(image:UIImage(systemName: "star.fill"))
                star.contentMode = .scaleAspectFit
                star.tintColor = .orange
                star.snp.makeConstraints{ $0.size.equalTo(16) }
                stackView.addArrangedSubview(star)
            }
           
            let secondLabel = UILabel()
            secondLabel.text = "9월 27일"
            secondLabel.textColor = .gray
            secondLabel.font = .systemFont(ofSize: 16)
            
            let thirdLabel = UILabel()
            thirdLabel.text = "흑 운영자님 ㅠㅠ"
            thirdLabel.textColor = .gray
            thirdLabel.font = .systemFont(ofSize: 16)
            
            let fourthLabel = UILabel()
            fourthLabel.text = "최근 업데이트가 토스만의 ux 색깔 개성자체를 잃어버린 것 같습니다. 메인 화면 볼때마다 되게 부드럽고 한눈에 보기 편했는데, 이번 업데이트로 인해 딱딱해진것 같네요. 새로움을 지향하는건 좋으나 이용자들에게 강제가 아닌 선택할 수 있는 옵션이라도 만들어 주셨으면 어떨까요?"
            fourthLabel.font = .systemFont(ofSize: 16)
            fourthLabel.textColor = .white
            fourthLabel.numberOfLines = 3

            [firstLabel, stackView, secondLabel, thirdLabel, fourthLabel].forEach { view.addSubview($0) }
            
            firstLabel.snp.makeConstraints {
                $0.leading.equalToSuperview().inset(20)
                $0.top.equalToSuperview().inset(20)
            }
            
            stackView.snp.makeConstraints {
                $0.leading.equalTo(firstLabel)
                $0.top.equalTo(firstLabel.snp.bottom).offset(5)
            }
            
            secondLabel.snp.makeConstraints {
                $0.trailing.equalToSuperview().inset(20)
                $0.top.equalToSuperview().inset(20)
            }
            
            thirdLabel.snp.makeConstraints {
                $0.trailing.equalTo(secondLabel)
                $0.top.equalTo(secondLabel.snp.bottom).offset(5)
            }
            
            fourthLabel.snp.makeConstraints {
                $0.leading.equalTo(firstLabel)
                $0.top.equalTo(stackView.snp.bottom).offset(10)
                $0.width.equalToSuperview().inset(20)
            }

            
            return view
        }()
        
        let developerReviewView: UIView = {
            let view = UIView()
            
            let firstLabel = UILabel()
            firstLabel.text = "개발자 답변"
            firstLabel.textColor = .white
            firstLabel.font = .systemFont(ofSize: 16, weight: .semibold)
            
            let secondLabel = UILabel()
            secondLabel.text = "9월 29일"
            secondLabel.textColor = .gray
            secondLabel.font = .systemFont(ofSize: 16)
            
            let thirdLabel = UILabel()
            thirdLabel.text = "안녕하세요. 토스팀입니다. 소중한 의견을 주셔서 너무나 감사합니다. 토스 화면 UI를 사용자의 요구를 반영해 조금 더 편리하게 사용하도록 변경하였습니다만, 고객님처럼 불편하게 느끼셨을수도 있다고 생각합니다. 사용에 불편을 드려 죄송합니다." + "고객님께서 말씀해주신 내용은 반영될 수 있다 확답 드리기는 어려우나, 팀내에 공유하여 보다 편리한 토스 사용 경험을 하실 수 있도록 노력하겠습니다. 다른 문의 사항이 있다면 24시간 운영되는 카카오톡(@toss) 또는 고객센터 1599-4905로 문의 부탁드립니다. 감사합니다."
            thirdLabel.font = .systemFont(ofSize: 16)
            thirdLabel.textColor = .white
            thirdLabel.numberOfLines = 2
            
            [firstLabel, secondLabel, thirdLabel].forEach { view.addSubview($0) }
            
            firstLabel.snp.makeConstraints {
                $0.leading.equalToSuperview().inset(20)
                $0.top.equalToSuperview().inset(20)
            }
            
            secondLabel.snp.makeConstraints {
                $0.trailing.equalToSuperview().inset(20)
                $0.top.equalToSuperview().inset(20)
            }
            
            thirdLabel.snp.makeConstraints {
                $0.leading.equalTo(firstLabel)
                $0.top.equalTo(firstLabel.snp.bottom).offset(10)
                $0.width.equalToSuperview().inset(20)
            }
            
            return view
        }()
        
        view.addSubview(customerReviewView)
        view.addSubview(developerReviewView)
        
        customerReviewView.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
            $0.height.equalTo(150)
            $0.width.equalToSuperview()
        }
        
        developerReviewView.snp.makeConstraints {
            $0.leading.equalTo(customerReviewView)
            $0.top.equalTo(customerReviewView.snp.bottom)
            $0.bottom.equalTo(view)
            $0.width.equalToSuperview()
        }
        
        return view
    }()
    
    private var writeReviewSection: UIView = {
        let view = UIView()
        
        let writeReviewButton = UIButton()
        writeReviewButton.setImage(UIImage(systemName: "square.and.pencil"), for: .normal)
        writeReviewButton.setTitle(" 리뷰 작성", for: .normal)
        writeReviewButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        writeReviewButton.setTitleColor(.tintColor, for: .normal)
        
        let supportAppButton = UIButton()
        supportAppButton.setImage(UIImage(systemName: "questionmark.circle"), for: .normal)
        supportAppButton.setTitle(" 앱 지원", for: .normal)
        supportAppButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        supportAppButton.setTitleColor(.tintColor, for: .normal)
        
        view.addSubview(writeReviewButton)
        view.addSubview(supportAppButton)
        
        writeReviewButton.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        supportAppButton.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
        
        return view
    }()
    
    private func setUI() {
        self.addSubview(label)
        self.addSubview(starStackView)
        self.addSubview(reviewSection)
        self.addSubview(writeReviewSection)
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview()
            $0.top.equalToSuperview()
        }
        
        starStackView.snp.makeConstraints {
            $0.trailing.equalToSuperview()
            $0.centerY.equalTo(label)
        }
        
        reviewSection.snp.makeConstraints {
            $0.leading.equalTo(label)
            $0.trailing.equalTo(starStackView)
            $0.top.equalTo(label.snp.bottom).offset(20)
            $0.bottom.equalToSuperview().inset(40)
        }
        reviewSection.layer.cornerRadius = 20
        reviewSection.backgroundColor = .gray.withAlphaComponent(0.2)
        
        writeReviewSection.snp.makeConstraints {
            $0.leading.equalTo(reviewSection)
            $0.trailing.equalTo(reviewSection)
            $0.top.equalTo(label.snp.bottom)
            $0.bottom.equalToSuperview()
        }
        
    }
    
}
