//
//  LoginViewController.swift
//  IncentiveApp
//
//  Created by Bria Wallace on 6/30/17.
//  Copyright © 2017 Bria Wallace. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookShare
import FacebookCore

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let accessToken = AccessToken.current {
                 
        }
        let loginButton = LoginButton(readPermissions: [ .publicProfile])
        loginButton.center = view.center
        view.addSubview(loginButton)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
