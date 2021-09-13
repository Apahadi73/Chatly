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
    @State private var isProfilePresented = false
    @AppStorage("pageShown") var shownPage = ShownPage.HomePage
    let user = UserDefaults.standard.fetchCodableObjc(dataType: User.self, key: "User")
    
    var body: some View {
        NavigationView{
            VStack(alignment:.leading) {
                HStack() {
                    Button {
                        isProfilePresented = true
                    } label: {
                        if let avatar = user?.avatar{
                            Image(avatar)
                                .resizable()
                                .scaledToFit()
                                .frame(height:50)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                                .padding(.bottom,8)
                                .padding(.leading,16)
                        }
                    }//-Button
                    
                    Spacer(minLength: 0)
                    Text("Home")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.bottom,8)
                    Spacer(minLength: 0)
                    Button(action: {
                        shownPage = ShownPage.LoginPage
                        UserDefaults.standard.removeObject(forKey: "User")
                    }, label: {
                        Text("Logout")
                            .foregroundColor(.white)
                            .padding()
                    })//-Button
                } //-HStack
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.darkBlue)
                .edgesIgnoringSafeArea(.top)
                
                ScrollView(.vertical, showsIndicators: false) {
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
                                    print("messagelist refilled")
                                    messageList = dummyMList
                                }
                        }
                    }//-HStack
                    .padding()
                    .background(Color.lightBlue.opacity(0.32))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    .padding(.top)
                
                    VStack(alignment: .leading, spacing: 20) {
                      ForEach(messageList,id:\.id) { item in
                        NavigationLink(
                            destination: ChatPageView(secondUserName: item.userName),
                            label: {
                                ChatLinkView(userName: item.userName, lastMessage: item.lastMessage, avatar: item.avatar)
                            }
                        )
                      }
                    }
                }
            } //-VStack
            .navigationBarHidden(true)
            .navigationTitle("")
            .edgesIgnoringSafeArea([.top,.bottom])
        }//- NavigationView
        .sheet(isPresented: $isProfilePresented) {
            UserProfileInfo()
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
