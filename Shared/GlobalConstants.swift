//
//  GlobalProperties.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 7/17/21.
//

import Foundation

// stores all the avatar name
struct GlobalConstants{
    static let avatarNames:[String] = ["avatar-1","avatar-2","avatar-3","avatar-4","avatar-5","avatar-6"]
    
    static func getCurrentDate() -> String {
        let date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd"
        return dateFormatter.string(from: date)
    }
}

