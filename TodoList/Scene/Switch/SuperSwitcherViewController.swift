//
//  SuperSwitcherViewController.swift
//  TodoList
//
//  Created by Robert Nguyen on 12/4/18.
//  Copyright © 2018 Test. All rights reserved.
//

import UIKit
import RxSwift

class SuperSwitcherViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        if AppPreferences.instance.token == nil {
//            scene?.switch(to: LoginScene())
//        } else {
//            scene?.switch(to: TodoScene())
//        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
