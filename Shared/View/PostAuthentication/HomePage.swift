//
//  HomePage.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/8/21.
//

import SwiftUI

struct HomePage: View {
    @State var sfText: String = ""
    @AppStorage("pageShown") var shownPage = ShownPage.HomePage
    
    var body: some View {
//        ScrollView(.vertical, showsIndicators: true, content: {
            VStack{
                Button(action: {
                    shownPage = ShownPage.SignUpPage
                }, label: {
                    Text("Logout")
                })
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width: 20, height: 20, alignment: .center)
                    TextField("Search", text: $sfText)
                }
                .padding()
                .background(Color.lightBlue.opacity(0.32))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)
                
                Text("\(sfText)")

                List(dummyMList,id:\.id){ item in
                    UserMessageInfo(userName: item.userName, lastMessage: item.lastMessage, avatar: item.avatar)
                }
                    
            }
//        })
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
