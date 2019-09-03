//
//  LoginViewController.swift
//  DevelopmentModelOfSwiftProject
//
//  Created by hrt03 on 2019/9/3.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit
import SnapKit


class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myLoginView = LoginView.init(frame: view.bounds)
        view.addSubview(myLoginView)
        myLoginView.blockActionLogin = {
            self.actionLogin()
        }

    }

    
    
    @objc func actionLogin() -> Void {
        let para = ["appType":"0","os":"0","agentId":"10000"]
        NetworkingService.shared.post(path: queryVersion, parameters: para) { (value, err) in
            if let json = value {
                print(json["message"].stringValue)
            }else
            {
                print(err as Any)
            }
        }
    }
    

}


