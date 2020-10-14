//
//  ViewController.swift
//  ViewCodeApp
//
//  Created by Usuário Convidado on 13/10/20.
//  Copyright © 2020 FIAP. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, HasCodeView {
    typealias CustomView = WelcomeView

    override func loadView() {
        view = WelcomeView(delegate: self)
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWilHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func keyboardWillShow(notification: NSNotification){
        guard let userInfo = notification.userInfo,
            let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
        
        //Pode ser feito desse jeito ou do modo abaixo, mais pratico
       // (view as? WelcomeView)?.scrollView.contentInset.bottom = keyboardFrame.size.height - view.safeAreaInsets.bottom
        //(view as? WelcomeView)?.scrollView.verticalScrollIndicatorInsets.bottom = keyboardFrame.size.height - view.safeAreaInsets.bottom
        
        
        customView.scrollView.contentInset.bottom = keyboardFrame.size.height - view.safeAreaInsets.bottom
        customView.scrollView.verticalScrollIndicatorInsets.bottom = keyboardFrame.size.height - view.safeAreaInsets.bottom
    }

    @objc private func keyboardWilHide(notification: NSNotification){
        //(view as? WelcomeView)?.scrollView.contentInset.bottom = 0
        //(view as? WelcomeView)?.scrollView.verticalScrollIndicatorInsets.bottom = 0
        
        customView.scrollView.contentInset.bottom = 0
        customView.scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}

extension WelcomeViewController: WelcomeViewDelegate{
    func loginButtonTapped(withPhone: String) {
        print("Usuário tocou no botão de Login com o telefone \(withPhone)")
    }
    
    func signUpButtonTapped() {
        print("Usuário tocou no botão de SignUp")
    }
    
    func facebookButtonTapped() {
        
    }
    
    func googleButtonTapped() {
        
    }
    
    
}

