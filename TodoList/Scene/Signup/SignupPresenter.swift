//
//  SignupPresenter.swift
//  TodoList
//
//  Created Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//
//  Template generated by Juanpe Catalán - @JuanpeCMiOS
//

import UIKit
import RxSwift
import RxRelay

class SignupPresenter: SignupPresenterProtocol {
    weak private var view: SignupViewProtocol?
    var interactor: SignupInteractorProtocol?
    private let router: SignupWireframeProtocol?
    
    lazy var result = PublishRelay<Void>()
    lazy var error = PublishRelay<Error>()
    
    lazy var disposeBag = DisposeBag()

    init(view: SignupViewProtocol, interactor: SignupInteractorProtocol?, router: SignupWireframeProtocol?) {
        self.view = view
        self.interactor = interactor
        self.router = router
    
        bindModel()
    }
    
    private func bindModel() {
        result.subscribe(onNext: {
            [weak self] _ in
            self?.router?.moveToTodoList()
        }).disposed(by: disposeBag)
        guard let view = view else { return }
        error.subscribe(onNext: view.showError).disposed(by: disposeBag)
    }
    
    func doSignup(username: String, password: String) {
        interactor?.requestSignup(username: username, password: password)
    }

    func didTapLogin() {
        router?.goBack()
    }
}
