//
//  AddPeopleView.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/18/21.
//

import SwiftUI
import FirebaseDatabase

struct AddPeopleView: View {
    @State var sfText: String = ""
//    @State var messageList: [MessageInfo] = dummyMList
//    @State var usersList: [User] = []
    @State private var isProfilePresented = false
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("pageShown") var shownPage = ShownPage.AddPeopleView
    let user = UserDefaults.standard.fetchCodableObjc(dataType: User.self, key: "User")
//    private var dbRef: DatabaseReference = Database.database().reference()
    @ObservedObject var viewModel: AddFriendsViewModel = AddFriendsViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                HStack(alignment: .center) {
                    Spacer(minLength: 0)
                    Text("Add Friends")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.bottom,8)
                    Spacer(minLength: 0)
                    Button(action: {
                      // ACTION
                      self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                      Image(systemName: "chevron.down.circle.fill")
                        .font(.title)
                        .foregroundColor(Color.white)
                        .shadow(radius: 4)
                        .opacity(self.pulsate ? 1 : 0.6)
                        .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                    })
                      .padding(.trailing, 20)
                } //-HStack
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                .background(Color.darkBlue)
                
                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .foregroundColor(Color.gray)
                        .frame(width: 20, height: 20, alignment: .center)
                    TextField("Search", text: $sfText)
                        .onChange(of: sfText) {
                            print($0)
                            viewModel.filterUsers(query: sfText)
                        }
                }//-HStack
                .padding()
                .background(Color.lightBlue.opacity(0.32))
                .cornerRadius(15)
                .padding(.horizontal)
                .padding(.top)

                List(viewModel.userInfoList,id:\.uid){ user in
                    RequestView(avatar: user.avatar, userName: user.userName)
                }//-List
                
            } //-VStack
            .navigationBarHidden(true)
            .navigationTitle("")
            .edgesIgnoringSafeArea([.top,.bottom])
        }//- NavigationView
        .onAppear(perform: {
            self.viewModel.fetchUsers()
        })
    }
    
//    private func fetchUsers() {
//        var userInfoList: [User] = []
//        self.dbRef.child("chatlyUsers").getData { (error, snapshot) in
//            if let error = error {
//                print("Error getting data \(error)")
//            }
//            else if snapshot.exists() {
//                if let responseData = snapshot.value as? NSDictionary {
//                    for item in responseData.allValues {
//                        if let uInfo = item as? NSDictionary {
//                            if let userInfo = uInfo["usersInfo"] {
//                                do {
//                                    let jsonData = try JSONSerialization.data(withJSONObject: userInfo, options: [])
//                                    let userItem = try JSONDecoder().decode(User.self, from: jsonData)
//                                    userInfoList.append(userItem )
//                                } catch let error {
//                                    print(error)
//                                }
//                            }
//                        }
//                    }
//                    usersList = userInfoList
//                }
//            }
//            else {
//                print("No data available")
//            }
//        }
//    }
}

//struct AddPeopleView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddPeopleView()
//    }
//}
