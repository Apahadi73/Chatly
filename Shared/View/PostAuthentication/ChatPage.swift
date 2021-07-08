//
//  ChatPage.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import SwiftUI

struct ChatPage: View {
    @State var tfMessage: String = ""
    @AppStorage("current_user") var CUser = 1
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(){
                    ForEach(dummyChats,id:\.id){ chat in
                        ChatMessage(message: chat.text, avatar: chat.avatar,userId: chat.uid)
                    }
                }
            }
            
            HStack{
                TextField("Message", text: $tfMessage)
                Image(systemName: "arrow.up.circle.fill")
                    .resizable()
                    .foregroundColor(Color.gray)
                    .frame(width: 20, height: 20, alignment: .center)
            }
            .padding()
            .background(Color.lightBlue.opacity(0.32))
            .cornerRadius(15)
            .padding(.horizontal)
            .padding(.top)
        }
        .padding()
    }
}

struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPage()
    }
}
