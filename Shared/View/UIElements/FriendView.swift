//
//  FriendView.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/18/21.
//

import SwiftUI

struct FriendView: View {
    @State var avatar: String
    @State var userName: String
    
    var body: some View {
        HStack{
            Image(avatar)
                .resizable()
                .scaledToFit()
                .frame(height:24)
                .clipShape(Circle())
            Text(userName)
            Spacer()
        }
    }
}


struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView(avatar: "avatar-1", userName: "user name")
    }
}
