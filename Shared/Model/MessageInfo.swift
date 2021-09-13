//
//  MessageInfo.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import Foundation

struct MessageInfo:Identifiable {
    let id = UUID()
    let userName:String
    let lastMessage:String
    let avatar:String
}
