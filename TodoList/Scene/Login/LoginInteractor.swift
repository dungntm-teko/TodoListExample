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
            "email": username,
            "password": password
        ]
        guard let presenter = presenter else { return }
        authRequest.login(params)
            .compactMap {
                response in
                response.result
            }
            .map { $0.token }
            .do(onNext: saveToken(token:))
            .map { _ in () }
            .do(onError: presenter.error.accept)
            .catchError { _ in Observable.empty() }
            .subscribe()
//            .bind(to: presenter.result)
            .disposed(by: disposeBag)
//        request.subscribe(onError: presenter.error.accept).disposed(by: disposeBag)
    }
    
    func saveToken(token: String) {
        AppPreferences.instance.token = token
    }
}
