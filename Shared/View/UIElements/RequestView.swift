//
//  RequestView.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/18/21.
//  Used for showing both the add people and accept request views
//

import SwiftUI

struct RequestView: View {
    @State var avatar: String
    @State var userName: String
    
    var body: some View {
        HStack{
            Image(avatar)
                .resizable()
                .scaledToFit()
                .frame(height:32)
                .clipShape(Circle())
            Text(userName)
            Spacer()
            Button(action: {
                print("Friends button clicked")
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

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView(avatar: "avatar-1", userName: "userName")
    }
}
