//
//  User.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/7/21.
//

import Foundation

struct User : Codable {
    let avatar: String
    let email: String
    let dateJoined: String
    let uid: String
    let userName: String
}
