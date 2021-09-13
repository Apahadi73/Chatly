//
//  UserProfileInfo.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 7/17/21.
//

import SwiftUI

struct UserProfileInfo: View {
    let user = UserDefaults.standard.fetchCodableObjc(dataType: User.self, key: "User")
//    @AppStorage("pageShown") var shownPage = ShownPage.HomePage
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                HStack(alignment:.center){
                    Spacer()
                        VStack(alignment:.center){
                            Image(user?.avatar ?? "avatar-4")
                                .resizable()
                                .scaledToFit()
                                .frame(height:100)
                                .clipShape(Circle())
                            if let name = user?.userName{
                                Text(name)
                                    .font(.title)
                                    .bold()
                            }
                            if let email = user?.email{
                                Text(email)
                                    .foregroundColor(Color.secondary)
                                    .padding(.bottom,16)
                            }
                        }
                    Spacer()
                }
                
                Section(header: Text("People").font(.title2).bold().padding()
                ){
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
//                            shownPage = ShownPage.AddPeopleView
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
                    .background(Color.white)
                    .padding()
                }
            }
        }
        .background(Color.cLightGray)
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
