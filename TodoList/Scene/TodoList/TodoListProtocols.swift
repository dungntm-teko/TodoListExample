//
//  TodoListProtocols.swift
//  TodoList
//
//  Created Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//
//  Template generated by Juanpe Catalán - @JuanpeCMiOS
//

import RxRelay

//MARK: - Wireframe
protocol TodoListWireframeProtocol: class {

}

//MARK: - Presenter
protocol TodoListPresenterProtocol: class {

}

//MARK: - Interactor
protocol TodoListInteractorProtocol: class {
    var presenter: TodoListPresenterProtocol?  { get set }
}

//MARK: - View
protocol TodoListViewProtocol: class {
    var presenter: TodoListPresenterProtocol?  { get set }
}