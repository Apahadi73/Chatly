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
    @AppStorage("pageShown") var shownPage = ShownPage.ChatPage
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(spacing:0){
            HStack() {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Back")
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding(.leading,16)
                })
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
            .padding()
            
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
//      removes navbar from the top
        .navigationBarHidden(true)
        .navigationTitle("")
        .edgesIgnoringSafeArea(.top)
    }
}

struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPage()
    }
}
