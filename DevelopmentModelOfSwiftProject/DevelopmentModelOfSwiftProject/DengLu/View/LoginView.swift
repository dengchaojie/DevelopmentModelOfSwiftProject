//
//  LoginView.swift
//  DevelopmentModelOfSwiftProject
//
//  Created by hrt03 on 2019/9/3.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    var blockActionLogin: (() -> Void)?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        let myImageView = UIImageView.init(frame: .zero)
        self.addSubview(myImageView);
        myImageView.snp.makeConstraints { (make) in
            make.width.height.equalTo(90)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().dividedBy(3)
            
        }
        myImageView.image = UIImage.init(named: "icon")
        let myLoginButton = LoginButton.init(frame: .zero)
        self.addSubview(myLoginButton);
        myLoginButton.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.height.equalTo(40)
            make.center.equalToSuperview()
        }
        myLoginButton.addTarget(self, action: #selector(actionLogin), for: .touchUpInside)

    }
    
    
    @objc func actionLogin() -> Void {
        guard let block = blockActionLogin else {
            return
        }
        block()

    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

    }
    
}

