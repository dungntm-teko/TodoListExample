//
//  SuperSwitcherProtocols.swift
//  TodoList
//
//  Created Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//
//  Template generated by Juanpe Catalán - @JuanpeCMiOS
//

import Foundation

//MARK: - Wireframe
protocol SuperSwitcherWireframeProtocol: class {
    func moveToTodoList()
    func moveToLogin()
}

//MARK: - Presenter
protocol SuperSwitcherPresenterProtocol: class {
    func doCheckAuthorization()
}

//MARK: - View
protocol SuperSwitcherViewProtocol: class {
    var presenter: SuperSwitcherPresenterProtocol?  { get set }
}
