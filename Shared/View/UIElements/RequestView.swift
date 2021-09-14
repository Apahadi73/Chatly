//
//  RequestView.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/18/21.
//  Used for showing both the add people and accept request views
//

import SwiftUI

struct RequestView: View {
    let user: User
    let viewModel: AddFriendsViewModel
    
    var body: some View {
        HStack{
            Image(user.avatar)
                .resizable()
                .scaledToFit()
                .frame(height:32)
                .clipShape(Circle())
            Text(user.userName)
            Spacer()
            Button(action: {
                viewModel.addNewFriend(uid: user.uid)
            }, label: {
                Text("Add")
                    .padding()
                .font(.headline)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(15)
            }).buttonStyle(PlainButtonStyle())
            
        }
    }
}
