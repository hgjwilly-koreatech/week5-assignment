//
//  FirstViewController.swift
//  week5
//
//  Created by 홍기정 on 5/7/25.
//

import Foundation
import SnapKit

class WelcomeViewController: UIViewController{
    
    let rabbitImageView: UIImageView = {
        let rabbitImageView = UIImageView()
        rabbitImageView.image = UIImage(named: "rabbit")
        return rabbitImageView
    }()
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .boldSystemFont(ofSize: 25)
        titleLabel.text = "고객님\n반가워요!"
        titleLabel.textColor = .black
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 2
        return titleLabel
    }()
   
    let mainButton: UIButton = {
        let mainButton = UIButton()
        mainButton.setTitle("메인으로", for: .normal)
        mainButton.setTitleColor(.white, for: .normal)
        mainButton.backgroundColor = .primaryOrange
        return mainButton
    }()
    
    let moveToLoginViewButton: UIButton = {
        let moveToLoginViewButton = UIButton()
        moveToLoginViewButton.setTitle("다시 로그인", for: .normal)
        moveToLoginViewButton.setTitleColor(.black, for: .normal)
        moveToLoginViewButton.backgroundColor = .grey200
        moveToLoginViewButton.setTitleColor(.grey300, for: .normal)
        return moveToLoginViewButton
    }()

    // navigation bar 숨기기 (검색해서 가져온 코드)
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(rabbitImageView)
        view.addSubview(titleLabel)
        view.addSubview(mainButton)
        view.addSubview(moveToLoginViewButton)
        
        moveToLoginViewButton.addTarget(self, action: #selector(moveToLoginView), for: .touchUpInside)
        
        /*
        button.snp.makeConstraints{
            $0.centerX.equalTo(view.snp.centerX)
            $0.centerY.equalTo(view.snp.centerY)
        }
        */
        
        rabbitImageView.snp.makeConstraints{
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(view.snp.top).offset(88)
            $0.height.equalTo(150)
            $0.width.equalTo(150)
        }
        titleLabel.snp.makeConstraints{
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(rabbitImageView.snp.bottom).offset(64)
        }
        mainButton.snp.makeConstraints{
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(titleLabel.snp.bottom).offset(64)
            $0.left.equalTo(view.snp.left).offset(20)
            $0.right.equalTo(view.snp.right).offset(-20)
            $0.height.equalTo(57)
        }
        moveToLoginViewButton.snp.makeConstraints{
            $0.centerX.equalTo(view.snp.centerX)
            $0.top.equalTo(mainButton.snp.bottom).offset(15)
            $0.left.equalTo(view.snp.left).offset(20)
            $0.right.equalTo(view.snp.right).offset(-20)
            $0.height.equalTo(57)
        }
    }
    @objc private func moveToLoginView(){
        // navigation
        self.navigationController?.popViewController(animated: true)
        
        
        //let loginViewController = LoginViewController()
        
        
        // present
        
        
        // modal
        //self.present
        
        
    }
}

