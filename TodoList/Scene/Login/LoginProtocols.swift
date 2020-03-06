//
//  LoginProtocols.swift
//  TodoList
//
//  Created Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import RxRelay

//MARK: - Wireframe
protocol LoginWireframeProtocol: class {
    func moveToTodoList()
    func moveToSignup()
}

//MARK: - Presenter
protocol LoginPresenterProtocol: class {
    var result: PublishRelay<Void> { get }
    var error: PublishRelay<Error> { get }
    
    func doLogin(username: String, password: String)
    func didTapSignup()
}

//MARK: - Interactor
protocol LoginInteractorProtocol: class {
    var presenter: LoginPresenterProtocol?  { get set }
    
    func requestLogin(username: String, password: String)
}

//MARK: - View
protocol LoginViewProtocol: class {
    var presenter: LoginPresenterProtocol?  { get set }
    
    func showError(_ error: Error)
}
