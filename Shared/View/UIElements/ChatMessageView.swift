//
//  ChatMessage.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import SwiftUI

struct ChatMessageView: View {
//  MARK - PROPERTIES
    var message: String
    var avatar: String
    var userId: Int
    @AppStorage("current_user") var CUser = 1
    
    var body: some View {
        HStack(){
            if(CUser != userId){
                Image(avatar)
                    .resizable()
                    .scaledToFit()
                    .frame(height:40)
                    .clipShape(Circle())
            }
            if(CUser == userId){
                Spacer(minLength: 0)
            }
            Text(message)
                .minimumScaleFactor(0.9)
                .padding()
                .background(Color.lightBlue.opacity(0.32))
                .clipShape(ChatBubble(myMessage: CUser == userId))
                .padding(CUser == userId ? .leading : .trailing,32)
                
            if(CUser != userId){
                Spacer(minLength: 0)
            }
            
            if(CUser == userId){
                Image(avatar)
                    .resizable()
                    .scaledToFit()
                    .frame(height:40)
                    .clipShape(Circle())
            }
        } //-HStack
        
    }
}

struct ChatMessage_Previews: PreviewProvider {
    static var previews: some View {
        ChatMessageView(message: "Hi there  ", avatar: "avatar-1",userId: 2)
    }
}
