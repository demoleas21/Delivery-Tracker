//
//  CreateAccountViewController.swift
//  Delivery Tracker
//
//  Created by Andrew Demoleas on 4/19/17.
//  Copyright © 2017 Andrew Demoleas. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    var usernameField = UITextField()
    var passwordField = UITextField()
    var passwordVerificationField = UITextField()
    var emailField = UITextField()
    var emailVerificationField = UITextField()
    let createAccountButton = UIButton(type: UIButtonType.system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeUIComponents()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initializeUIComponents() {
        self.initializeUsernameField()
        self.initializePasswordField()
        self.initializePasswordVerificationField()
        self.initializeEmailField()
        self.initializeEmailVerificationField()
        self.initializeCreateAccountButton()
    }
    
    func initializeUsernameField() {
        usernameField.placeholder = "Username"
        usernameField.borderStyle = UITextBorderStyle.roundedRect
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(usernameField)
    }
    
    func initializePasswordField() {
        passwordField.placeholder = "Password"
        passwordField.borderStyle = UITextBorderStyle.roundedRect
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(passwordField)
    }
    
    func initializePasswordVerificationField() {
        passwordVerificationField.placeholder = "Re-enter Password"
        passwordVerificationField.borderStyle = UITextBorderStyle.roundedRect
        passwordVerificationField.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(passwordVerificationField)
    }
    
    func initializeEmailField() {
        emailField.placeholder = "Email"
        emailField.borderStyle = UITextBorderStyle.roundedRect
        emailField.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(emailField)
    }
    
    func initializeEmailVerificationField() {
        emailVerificationField.placeholder = "Re-enter Email"
        emailVerificationField.borderStyle = UITextBorderStyle.roundedRect
        emailVerificationField.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(emailVerificationField)
    }
    
    func initializeCreateAccountButton() {
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(createAccountButton)
    }
    
    func initializeConstraints(){
        var allConstraints = [NSLayoutConstraint]()
        let viewConstraints = [
            "usernameField": usernameField,
            "passwordField": passwordField,
            "passwordVerificationField": passwordVerificationField,
            "emailField": emailField,
            "emailVerificationField": emailVerificationField,
            "createAccountButton": createAccountButton
            ] as [String : Any]
            let metrics = [
                "elementDistance": self.view.frame.height / 14
            ]
        
        let horizontalUsernameFieldConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "|-100-[usernameField]-100-|",
            options: [],
            metrics: nil,
            views: viewConstraints
        )
        allConstraints += horizontalUsernameFieldConstraints
        
        let verticalUsernameFieldConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-150-[usernameField]",
            options: [],
            metrics: nil,
            views: viewConstraints
        )
        allConstraints += verticalUsernameFieldConstraints
        
        let horizontalPasswordFieldConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "|-100-[passwordField]-100-|",
            options: [],
            metrics: nil,
            views: viewConstraints
        )
        allConstraints = horizontalPasswordFieldConstraints
        
        let verticalPasswordFieldConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[usernameField]-(elementDistance)-[passwordField]",
            options: [],
            metrics: metrics,
            views: viewConstraints
        )
        allConstraints = verticalPasswordFieldConstraints
        
        NSLayoutConstraint.activate(allConstraints)
    }

    
}
