//
//  User.swift
//  Cafe
//
//  Created by 박경춘 on 2023/03/28.
//

import Foundation

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "떙떙", account: "띵땅")
}
