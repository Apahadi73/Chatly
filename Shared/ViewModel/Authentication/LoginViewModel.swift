//
//  LoginViewModel.swift
//  Chatly (iOS)
//
//  Created by Amir Pahadi on 9/12/21.
//

import Foundation
import FirebaseAuth
import FirebaseDatabase

class LoginViewModel: ObservableObject {
    
    @Published var alertMessage:String = ""
    @Published var showingAlert = false
    @Published var isLoading = false
    @Published var isAuthenticated = false
    private var realDbRef = Database.database().reference()
    
    func loginUser(email:String, password:String) {
        // signs in user using firebase authenticatinon
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if error != nil{
                self.alertMessage = error?.localizedDescription ?? ""
                self.showingAlert = true
                self.isLoading = false
                print("Failed to login user user. Error message: \(error?.localizedDescription ?? "Error occured while authenticating user")")
            }
            if let user = authResult?.user {
                print("User created")
                print("UserId: \(user.uid))")
                self.realDbRef.child("chatlyUsers").child(user.uid).child("usersInfo").getData { error, dataSnapshot in
                    if let error = error{
                        print("Error getting user info \(error)")
                    }
                    else if dataSnapshot.exists() {
                        print("Got User information")
                        print(dataSnapshot)
                        let data = dataSnapshot.value as! Dictionary<String, String>
                        // let userInfo = data as! User
                        let userInfo = User(avatar: data["avatar"]!, email: data["email"]!, dateJoined: data["dateJoined"]!, uid: data["uid"]!, userName: data["userName"]!)
                        //stores user info into UserDefaults
                        UserDefaults.standard.storeCodableObjc(data: userInfo, forKey: "User")
                        self.isLoading = false
//                        // takes user to the homepage
//                        self.shownPage = ShownPage.HomePage
                        self.isAuthenticated = true
                    } else {
                        print("No userInfo available")
                    }
                }
            }
        }
    }
}
