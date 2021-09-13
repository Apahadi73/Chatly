//
//  UserMessageInfo.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import SwiftUI

struct ChatLinkView: View {
    var userName: String
    var lastMessage: String
    var avatar: String
    
    var body: some View {
        VStack(alignment:.leading) {
            HStack {
                Image(avatar)
                    .resizable()
                    .scaledToFit()
                    .frame(height:60)
                    .clipShape(Circle())
                VStack(alignment: .leading){
                    Text(userName)
                        .font(.headline)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .minimumScaleFactor(0.9)
                    Text(lastMessage)
                        .lineLimit(1)
                        .minimumScaleFactor(0.9)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            Divider()
        }
        .padding(.horizontal, 8)
    }
}

struct UserMessageInfo_Previews: PreviewProvider {
    static var previews: some View {
        ChatLinkView(userName: "Username", lastMessage: "last message", avatar: "avatar-1")
    }
}
