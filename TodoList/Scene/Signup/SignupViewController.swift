//
//  SignupViewController.swift
//  Core-CleanSwift-Example
//
//  Created by Robert Nguyễn on 9/9/18.
//  Copyright © 2018 Robert Nguyễn. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    
    @IBOutlet weak var lbUsername: UITextField!
    @IBOutlet weak var lbPassword: UITextField!
    
    var presenter: SignupPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSignup(_ sender: UIButton) {
        guard let userName = lbUsername.text, let password = lbPassword.text else { return }
        
        presenter?.doSignup(username: userName, password: password)
    }
}

extension SignupViewController: SignupViewProtocol {
    func showError(_ error: Error) {
        let vc = UIAlertController(title: "Error", message: error as? String ?? error.localizedDescription, preferredStyle: .alert)
        vc.addAction(UIAlertAction(title: "OK", style: .default))
        present(vc, animated: true)
    }
}
