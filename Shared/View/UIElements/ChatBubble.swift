//
//  ChatBubble.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import SwiftUI

struct ChatBubble: Shape {
    var myMessage: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight,myMessage ? .bottomLeft : .bottomRight], cornerRadii: CGSize(width: 15, height: 15))
        return Path(path.cgPath)
    }
}


