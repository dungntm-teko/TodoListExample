//
//  AuthEntity.swift
//  TodoList
//
//  Created by Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import Foundation

struct AuthEntity: AuthDTO, Decodable {
    let token: String
    let user: UserEntity
    
    enum CodingKeys: String, CodingKey {
        case token = "accessToken"
        case user
    }
}
