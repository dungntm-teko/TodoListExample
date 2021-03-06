//
//  TodoListRouter.swift
//  TodoList
//
//  Created Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//
//  Template generated by Juanpe Catalán - @JuanpeCMiOS
//

import UIKit

class TodoListRouter: TodoListWireframeProtocol {
    weak var viewController: UIViewController?
    
    static func createModule() -> UIViewController {
        // Change to get view from storyboard if not using progammatic UI
        let view = AppStoryboard.main.viewController(of: TodoListViewController.self)
        let interactor = TodoListInteractor()
        let router = TodoListRouter()
        let presenter = TodoListPresenter(view: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }
}
