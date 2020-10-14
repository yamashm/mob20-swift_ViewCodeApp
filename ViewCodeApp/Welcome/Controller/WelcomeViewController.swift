//
//  ViewController.swift
//  ViewCodeApp
//
//  Created by Usuário Convidado on 13/10/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func loadView() {
        view = WelcomeView(delegate: self)
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        
    }

}

extension WelcomeViewController: WelcomeViewDelegate{
    func loginButtonTapped(withPhone: String) {
        
    }
    
    func signUpButtonTapped() {
        
    }
    
    func facebookButtonTapped() {
        
    }
    
    func googleButtonTapped() {
        
    }
    
    
}

