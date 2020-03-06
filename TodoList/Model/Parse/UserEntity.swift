//
//  UserEntity.swift
//  TodoList
//
//  Created by Robert Nguyen on 9/13/18.
//  Copyright © 2018 Robert Nguyễn. All rights reserved.
//

struct UserEntity: UserDTO, Codable, Equatable {
    typealias IDType = String
    
    var _id: String = ""
    var email: String = ""
    var name: String = ""
    
    var id: String {
        return _id
    }
}
