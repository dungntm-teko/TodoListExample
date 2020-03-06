//
//  LoginViewController.swift
//  TodoList
//
//  Created by Robert Nguyễn on 9/6/18.
//  Copyright © 2018 Robert Nguyễn. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    
    @IBOutlet weak var lbUsername: UITextField!
    @IBOutlet weak var lbPassword: UITextField!
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func onLogin(_ sender: UIButton) {
        guard let userName = lbUsername.text, let password = lbPassword.text else { return }
        
        presenter?.doLogin(username: userName, password: password)
    }
    
    @IBAction func onSingup(_ sender: UIButton) {
        presenter?.didTapSignup()
    }
}

extension LoginViewController: LoginViewProtocol {
    func showError(_ error: Error) {
        let vc = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "OK", style: .default))
        present(vc, animated: true)
    }
}
