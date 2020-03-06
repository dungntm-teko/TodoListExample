//
//  TodoEntity.swift
//  TodoList
//
//  Created by Robert Nguyen on 9/13/18.
//  Copyright © 2018 Robert Nguyễn. All rights reserved.
//

import Foundation
import RxCoreRepository

struct TodoEntity: TodoDTO, Identifiable, Decodable, Equatable {
    var _id: String = ""
    var title: String = ""
    var completed: Bool = false
    var owner: String = ""
    var createdAt: Date = Date()
    
    enum CodingKeys: String, CodingKey {
        case _id
        case title
        case completed
        case owner
        case createdAt = "created"
    }
    
    init(title: String) {
        self.title = title
    }
    
    var id: String {
        return _id
    }
    
    func toLiteralDictionary() -> [String: Any] {
        return [
            "title": title
        ]
    }
}
