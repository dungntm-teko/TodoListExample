//
//  AuthDTO.swift
//  TodoList
//
//  Created by Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import Foundation

protocol AuthDTO {
    var token: String { get }
    var user: UserEntity { get }
}
