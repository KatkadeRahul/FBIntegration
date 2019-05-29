//
//  ViewController.swift
//  FBIntegration
//
//  Created by Aress111 on 29/05/19.
//  Copyright © 2019 Rahul. All rights reserved.
//

import UIKit
import FacebookLogin
import FBSDKLoginKit

class ViewController: UIViewController,LoginButtonDelegate {

   
    @IBOutlet var btnFacebooknew : FBLoginButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnFacebooknew.delegate = self 
    }

    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        print("Did complete login via LoginButton with result \(String(describing: result)) " +
            "error\(String(describing: error))")
        print(result.debugDescription)
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        print("Did logout via LoginButton")
    }
    
}

