//
//  TodoDTO.swift
//  TodoList
//
//  Created by Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import Foundation

protocol TodoDTO {
    var id: String { get }
    var title: String { get }
    var completed: Bool { get }
    var owner: String { get }
    var createdAt: Date { get }
}
