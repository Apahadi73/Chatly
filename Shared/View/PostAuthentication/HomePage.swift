//
//  HomePage.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import SwiftUI

struct HomePage: View {
    @State var sfText: String = ""
    @State var messageList: [MessageInfo] = dummyMList
    @AppStorage("pageShown") var shownPage = ShownPage.HomePage
    
    var body: some View {
        NavigationView{
            VStack{
                HStack() {
                    Button(action: {
                        print("Profile section clicked")
                    }, label: {
                        Image("avatar-1")
                            .resizable()
                            .scaledToFit()
                            .frame(height:50)
                            .clipShape(Circle())
                            .foregroundColor(.white)
                            .padding(.bottom,8)
                            .padding(.leading,16)
                    }) //-Button
                    Spacer(minLength: 0)
                    Text("Home")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.bottom,8)
                    Spacer(minLength: 0)
                    Button(action: {
                        shownPage = ShownPage.SignUpPage
                    }, label: {
                        Text("Logout")
                            .foregroundColor(.white)
                            .padding()
                    })//-Button
                } //-HStack
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.darkBlue)
                .edgesIgnoringSafeArea(.top)
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width: 20, height: 20, alignment: .center)
                    TextField("Search", text: $sfText)
                        .onChange(of: sfText) {
                            print($0)
                            if(messageList.count>=0){
                                messageList = dummyMList.filter { messageInfo in
                                    messageInfo.userName.contains(sfText)
                                }
                            }
                            else {
                                messageList = dummyMList
                            }
                    }
                }//-HStack
                .padding()
                .background(Color.lightBlue.opacity(0.32))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)

                List(messageList,id:\.id){ item in
                    NavigationLink(
                        destination: ChatPage(),
                        label: {
                            UserMessageInfo(userName: item.userName, lastMessage: item.lastMessage, avatar: item.avatar)
                        })
                }//-List
            } //-VStack
            .navigationBarHidden(true)
            .navigationTitle("")
            .edgesIgnoringSafeArea([.top,.bottom])
        }//- NavigationView
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
