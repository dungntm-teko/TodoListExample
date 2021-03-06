//
//  SuperSwitcherViewController.swift
//  TodoList
//
//  Created by Robert Nguyen on 12/4/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit

class SuperSwitcherViewController: UIViewController {
    
    var presenter: SuperSwitcherPresenterProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presenter?.doCheckAuthorization()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

extension SuperSwitcherViewController: SuperSwitcherViewProtocol {
    
}
