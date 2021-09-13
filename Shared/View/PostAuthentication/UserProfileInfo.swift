//
//  UserProfileInfo.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 7/17/21.
//

import SwiftUI

struct UserProfileInfo: View {
    let user = UserDefaults.standard.fetchCodableObjc(dataType: User.self, key: "User")
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image(user?.avatar ?? "avatar-4")
                  .resizable()
                  .scaledToFit()
                  .padding(.top)
                  .frame(width: 100, height: 100, alignment: .center)
                  .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                if let name = user?.userName{
                    Text(name)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                }
                if let email = user?.email{
                    Text(email)
                        .foregroundColor(Color.secondary)
                        .padding(.bottom,16)
                }
            }
            Form {
                Section(header: Text("People")){
                    VStack{
                        Button {
                            print("View Friends Btn Clicked")
                        } label: {
                            HStack{
                                Text("View Friends")
                                    .padding(.vertical,4)
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                            .padding(.vertical,4)
                            .padding(.horizontal,8)
                        }
                        Divider()
                        Button {
                            hapticImpact.impactOccurred()
                            showModal = true
                        } label: {
                            HStack{
                                Text("Add People")
                                    .padding(.vertical,4)
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal,8)
                            .padding(.vertical,4)
                        }
                        Divider()
                        Button {
                            print("View Requests Btn Clicked")
                        } label: {
                            HStack{
                                Text("View Requests")
                                    .padding(.vertical,4)
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal,8)
                            .padding(.vertical,4)
                        }
                        Divider()
                        Button {
                            print("Change Password Btn Clicked")
                        } label: {
                            HStack{
                                Text("Change Password")
                                    .padding(.vertical,4)
                                Spacer()
                                Image(systemName: "arrow.right")
                            }
                            .padding(.horizontal,8)
                            .padding(.vertical,4)
                        }
                    }
                    .padding()
                }
            }
        }
        .ignoresSafeArea(.all)
        .sheet(isPresented: self.$showModal) {
          AddPeopleView()
        }
    }
}

struct UserProfileInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileInfo()
    }
}
