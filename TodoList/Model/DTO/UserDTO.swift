//
//  UserDTO.swift
//  TodoList
//
//  Created by Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import Foundation

protocol UserDTO {
    var id: String { get }
    var email: String { get }
    var name: String { get }
}
