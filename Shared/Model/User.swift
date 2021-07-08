//
//  User.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/7/21.
//

import Foundation

struct User : Codable {
    var userName: String
    var fullName: String
    var email: String
    var avatar: String
    var friends: [String]
    var chats:[String]
}

