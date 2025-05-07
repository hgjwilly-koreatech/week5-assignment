//
//  FirstViewController.swift
//  week5
//
//  Created by 홍기정 on 5/7/25.
//

import Foundation
import SnapKit

// placeholder textcolor (검색해보고 적용했습니다)
extension UITextField {
    func setPlaceholder(color: UIColor){
        guard let string = self.placeholder else {return}
        attributedPlaceholder = NSAttributedString(string: string, attributes: [.foregroundColor: color])
    }
}

class LoginViewController: UIViewController{
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont(name: "PretendardGOV-Bold", size: 18)
        titleLabel.text = "동네라서 가능한 모든 것\n당근에서 가까운 이웃과 함께해요."
        titleLabel.numberOfLines = 2
        titleLabel.textAlignment = .center
        titleLabel.textColor = .black
        return titleLabel
    }()
    
    let idTextField: UITextField = {
        let idTextField = UITextField()
        idTextField.placeholder = "아이디"
        idTextField.backgroundColor = .grey200
        idTextField.font = UIFont(name: "PretendardGOV-SemiBold", size: 14)
        idTextField.layer.cornerRadius = 3
        idTextField.setPlaceholder(color: .grey300)
        idTextField.textColor = .black
        return idTextField
    }()
    
    let pwTextField: UITextField = {
        let pwTextField = UITextField()
        pwTextField.placeholder = "비밀번호"
        pwTextField.backgroundColor = .grey200
        pwTextField.font = UIFont(name: "PretendardGOV-SemiBold", size: 14)
        pwTextField.layer.cornerRadius = 3
        pwTextField.setPlaceholder(color: .grey300)
        pwTextField.textColor = .black
        return pwTextField
    }()
    
    let loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("로그인하기", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .primaryOrange
        loginButton.titleLabel?.font = UIFont(name: "PretendardGOV-Bold", size: 18)
        loginButton.layer.cornerRadius = 6
        return loginButton
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(titleLabel)
        view.addSubview(idTextField)
        view.addSubview(pwTextField)
        view.addSubview(loginButton)
        
        loginButton.addTarget(self, action: #selector(moveToWelcomeView), for: .touchUpInside)
        
        setConstraints()
    }
    
    
    func setConstraints() {
        titleLabel.snp.makeConstraints{
            $0.top.equalTo(view.snp.top).offset(170)
            $0.centerX.equalTo(view.snp.centerX)
        }
        idTextField.snp.makeConstraints{
            $0.top.equalTo(titleLabel.snp.bottom).offset(64)
            $0.centerX.equalTo(view.snp.centerX)
            $0.left.equalTo(view.snp.left).offset(20)
            $0.right.equalTo(view.snp.right).offset(-20)
            $0.height.equalTo(52)
        }
        pwTextField.snp.makeConstraints{
            $0.top.equalTo(idTextField.snp.bottom).offset(7)
            $0.centerX.equalTo(view.snp.centerX)
            $0.left.equalTo(view.snp.left).offset(20)
            $0.right.equalTo(view.snp.right).offset(-20)
            $0.height.equalTo(52)
        }
        loginButton.snp.makeConstraints{
            $0.top.equalTo(pwTextField.snp.bottom).offset(35)
            $0.centerX.equalTo(view.snp.centerX)
            $0.left.equalTo(view.snp.left).offset(20)
            $0.right.equalTo(view.snp.right).offset(-20)
            $0.height.equalTo(57)
        }
    }
    
    @objc private func moveToWelcomeView(){
        let welcomeViewController = WelcomeViewController()
        if idTextField.text != "" { welcomeViewController.name = idTextField.text }
        
        // nagivation
        self.navigationController?.pushViewController(welcomeViewController, animated: true)
        
        // modal
        // present(welcomeViewController, animated: true)
    }
}
