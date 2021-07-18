//
//  FUser.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 7/17/21.
//

import Foundation

struct FUser : Codable {
    var uid: String
    var userName: String
    var fullName: String
    var email: String
    var avatar: String
    var friends: [String]
    var chats:[String]
}
