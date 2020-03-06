//
//  Extension.swift
//  TodoList
//
//  Created by Dung Nguyen on 3/6/20.
//  Copyright © 2020 Dung Nguyen. All rights reserved.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: self)
    }
    
    var isValidPhone: Bool {
        let regex = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", regex)
        let result = phoneTest.evaluate(with: self)
        return result
    }
}
