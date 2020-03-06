//
//  LoginInteractor.swift
//  TodoList
//
//  Created Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import RxSwift

class LoginInteractor: LoginInteractorProtocol {
    weak var presenter: LoginPresenterProtocol?
    
    let disposeBag = DisposeBag()
    
    var authRequest = AuthRequest()
    
    func requestLogin(username: String, password: String) {
        let params = [
            "username": username,
            "password": password
        ]
        let request = authRequest.login(params)
            .compactMap { $0.result }
            .do(onNext: {
                AppPreferences.instance.token = $0.token
            })
            .map { _ in () }
            .share()
        
        guard let presenter = presenter else { return }
        request.catchError { _ in .empty() }.bind(to: presenter.result).disposed(by: disposeBag)
        request.subscribe(onError: presenter.error.accept).disposed(by: disposeBag)
    }
}
