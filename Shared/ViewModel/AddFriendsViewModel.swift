//
//  AddFriendsViewModel.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 9/13/21.
//

import Foundation

import Foundation
import FirebaseAuth
import FirebaseDatabase

class AddFriendsViewModel: ObservableObject {
    
    @Published var userInfoList: [User] = []
    var userList: [User] = []
    private var dbRef: DatabaseReference = Database.database().reference()
    
    func fetchUsers() {
        print("fetching user information")
        self.dbRef.child("chatlyUsers").getData { (error, snapshot) in
            if let error = error {
                print("Error getting data \(error)")
            }
            else if snapshot.exists() {
                print("fetched user information")
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
    
    func fillUserInfoList(){
        self.userList = self.userInfoList
        print("Data Filled")
    }
    
    func filterUsers(query: String) {
        if(userInfoList.count>=0){
            userInfoList = userList.filter { user in
                user.userName.contains(query)
            }
        }
        else {
            self.fillUserInfoList()
        }
    }
}
