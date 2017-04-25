//
//  LoginViewController.swift
//  Delivery Tracker
//
//  Created by Andrew Demoleas on 4/19/17.
//  Copyright © 2017 Andrew Demoleas. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginView: LoginView! {return self.view as! LoginView}
    
    override func loadView() {
        view = LoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.loginView.initializeUIComponents()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

