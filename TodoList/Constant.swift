//
//  Constant.swift
//  TodoList
//
//  Created by Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import Foundation

enum Constant {
    enum Request {
        static let jsonDecoder: JSONDecoder = {
            let decoder = JSONDecoder()
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
            formatter.calendar = Calendar(identifier: .iso8601)
            formatter.timeZone = .current
            formatter.locale = .current
            decoder.dateDecodingStrategy = .formatted(formatter)
            
            return decoder
        }()
    }
}
