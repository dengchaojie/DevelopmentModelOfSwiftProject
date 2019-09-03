//
//  LoginButton.swift
//  DevelopmentModelOfSwiftProject
//
//  Created by hrt03 on 2019/9/3.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit

class LoginButton: UIButton {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.purple
        self.setTitle("登录", for: .normal)
        self.layer.cornerRadius = 10
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
