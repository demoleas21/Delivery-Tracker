//
//  LoginView.swift
//  Delivery Tracker
//
//  Created by Andrew Demoleas on 4/20/17.
//  Copyright © 2017 Andrew Demoleas. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    var usernameField = UITextField()
    var passwordField = UITextField()
    let submitButton = UIButton(type: UIButtonType.system)
    let createAccountButton = UIButton(type: UIButtonType.system)
    
    func initializeUIComponents() {
        self.initializeUsernameField()
        self.initializePasswordField()
        self.initializeSubmitButton()
        self.initializeCreateAccountButton()
        initializeConstraints()
    }
    
    func initializeUsernameField() {
        usernameField.placeholder = "Username"
        usernameField.borderStyle = UITextBorderStyle.roundedRect
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(usernameField)
    }
    
    func initializePasswordField() {
        passwordField.placeholder = "Password"
        passwordField.borderStyle = UITextBorderStyle.roundedRect
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(passwordField)
    }
    
    func initializeSubmitButton() {
        submitButton.setTitle("Submit", for: UIControlState.normal)
        submitButton.layer.cornerRadius = 5.0
        submitButton.titleLabel?.font = UIFont(name: "Ariel", size: 20.0)
        submitButton.backgroundColor = UIColor.red
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(submitButton)
    }
    
    func initializeCreateAccountButton() {
        createAccountButton.setTitle("Create New Account", for: UIControlState.normal)
        createAccountButton.layer.cornerRadius = 5.0
        createAccountButton.titleLabel?.font = UIFont(name: "Ariel", size: 20.0)
        createAccountButton.backgroundColor = UIColor.black
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(createAccountButton)
    }
    
    func initializeConstraints(){
        var allConstraints = [NSLayoutConstraint]()
        let viewConstraints = [
            "usernameField": usernameField,
            "passwordField": passwordField,
            "submitButton": submitButton,
            "createAccountButton": createAccountButton
            ] as [String : Any]
        let metrics = [
            "elementDistance": self.frame.height / 11
        ]
        
        let horizontalUsernameFieldConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "|-100-[usernameField]-100-|",
            options: [],
            metrics: metrics,
            views: viewConstraints
        )
        allConstraints += horizontalUsernameFieldConstraints
        
        let verticalUsernameFieldConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:|-175-[usernameField]",
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
        allConstraints += horizontalPasswordFieldConstraints
        
        let verticalPasswordFieldConstraints = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[usernameField]-(elementDistance)-[passwordField]",
            options: [],
            metrics: metrics,
            views: viewConstraints
        )
        allConstraints += verticalPasswordFieldConstraints
        
        let horizontalSubmitButtonConstraint = NSLayoutConstraint.constraints(withVisualFormat:
            "|-100-[submitButton(75)]-100-|",
            options: [],
            metrics: nil,
            views: viewConstraints
        )
        allConstraints += horizontalSubmitButtonConstraint
        
        let verticalSubmitButtonContraint = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[passwordField]-(elementDistance)-[submitButton(50)]",
            options: [],
            metrics: metrics,
            views: viewConstraints
        )
        allConstraints += verticalSubmitButtonContraint
        
        let horizontalCreateAccountButtonConstraint = NSLayoutConstraint.constraints(withVisualFormat:
            "|-100-[createAccountButton(75)]-100-|",
            options: [],
            metrics: nil,
            views: viewConstraints
        )
        allConstraints += horizontalCreateAccountButtonConstraint
        
        let verticalCreateAccountButtonConstraint = NSLayoutConstraint.constraints(withVisualFormat:
            "V:[submitButton]-(elementDistance)-[createAccountButton(50)]",
            options: [],
            metrics: metrics,
            views: viewConstraints
        )
        allConstraints += verticalCreateAccountButtonConstraint
        
        NSLayoutConstraint.activate(allConstraints)
    }
    
}
