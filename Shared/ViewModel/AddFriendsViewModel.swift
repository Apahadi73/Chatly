//
//  AddFriendsViewModel.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 9/13/21.
//

import Foundation
import Combine

import FirebaseAuth
import FirebaseDatabase

class AddFriendsViewModel: ObservableObject {
    
    @Published var userInfoList: [User] = []
    var userList: [User] = []
    private var dbRef: DatabaseReference = Database.database().reference()
    private let user = UserDefaults.standard.fetchCodableObjc(dataType: User.self, key: "User")
    @Published var alertMessage:String = ""
    @Published var showingAlert = false

    func fetchNewUser() {
        self.dbRef.child("chatlyUsers").getData { (error, snapshot) in
            if let error = error {
                print("Error getting data \(error)")
            }
            else if snapshot.exists() {
                if let responseData = snapshot.value as? NSDictionary {
                    for item in responseData.allValues {
                        if let uInfo = item as? NSDictionary {
                            if let userInfo = uInfo["usersInfo"] {
                                do {
                                    let jsonData = try JSONSerialization.data(withJSONObject: userInfo, options: [])
                                    let userItem = try JSONDecoder().decode(User.self, from: jsonData)
                                    self.userList.append(userItem )
                                } catch let error {
                                    print(error)
                                }
                            }
                            
                        }
                    }
                    self.fillUserInfoList()
                }
            }
            else {
                print("No data available")
            }
        }
    }
    
    func addNewFriend(uid:String) {
        let data = ["uid": uid ]
        // TODO: Add error handler later on
        self.dbRef.child("chatlyUsers").child(uid).child("friendRequests").updateChildValues(data) { cError, cRef in}
    }
    
//
//    func checkIfFriend(userInfo: NSDictionary) -> Bool {
//        if let friendRequest = userInfo["friendRequests"] {
//            do {
//                let jsonData = try JSONSerialization.data(withJSONObject: friendRequest, options: [])
//                let frItem = try JSONDecoder().decode(FriendRequest.self, from: jsonData)
//                return frItem
//            } catch let error {
//                print(error)
//            }
//        }
//        return false
//    }
    
    func fillUserInfoList(){
        DispatchQueue.main.async {
            // remove current user from the user list
            self.userList.removeAll {
                return $0.uid == self.user?.uid
            }
            self.userInfoList = self.userList
        }
    }
    
    func filterUsers(query: String) {
        if(query.isEmpty){
            fillUserInfoList()
        }
        else {
            userInfoList = userList.filter { user in
                user.userName.contains(query)
            }
        }
    }
}
