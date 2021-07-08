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
        VStack(spacing:0){
            HStack() {
                Spacer(minLength: 0)
                Text("User \(CUser)")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.bottom,8)
                Spacer(minLength: 0)
            }
            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            .background(Color.darkBlue)
            .edgesIgnoringSafeArea(.top)

            
            ScrollViewReader{ reader in
                ScrollView{
                    VStack(){
                        ForEach(dummyChats,id:\.id){ chat in
                            ChatMessage(message: chat.text, avatar: chat.avatar,userId: chat.uid)
                        }
                    }
                }
            }
            
            HStack{
                TextField("Message", text: $tfMessage)
                if(tfMessage != ""){
                    Button(action: {
                        print("\(tfMessage)")
                    }, label: {
                        Image(systemName: "paperplane.fill")
                            .resizable()
                            .foregroundColor(Color.green)
                            .frame(width: 25, height: 25, alignment: .center)
                    })
                }
            }
            .padding()
            .background(Color.lightBlue.opacity(0.32))
            .cornerRadius(15)
            .padding(.horizontal)
            .padding(.top)
        }
    }
}

struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPage()
    }
}
