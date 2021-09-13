//
//  LoginPage.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/7/21.
//

import SwiftUI
import FirebaseAuth
import FirebaseDatabase

struct LoginPage: View {
//  MARK- PROPERTIES
    @State var email:String = ""
    @State var password:String = ""
    @State var alertMessage:String = ""
    @State private var showingAlert = false
    @State private var isLoading = false
    //  stores the info about the page shown on the app screen
    @AppStorage("pageShown") var shownPage = ShownPage.LoginPage
    private var realDbRef = Database.database().reference()
    
    var body: some View {
        ZStack{
            ScrollView{
                VStack(alignment: .center, spacing: nil, content: {
                    Spacer(minLength: 16)
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                   
                    Text("Login")
                        .font(.title)
                        .bold()
                
                    VStack{
                        HStack{
                            Image(systemName: "envelope")
                                .resizable()
                                .foregroundColor(Color.gray)
                                .frame(width: 20, height: 20, alignment: .center)
                            TextField("Email Address", text: $email)
                        }
                        .padding()
                        .background(Color.lightBlue.opacity(0.32))
                        .cornerRadius(15)
                        
                        HStack{
                            Image(systemName: "lock")
                                .resizable()
                                .foregroundColor(Color.gray)
                                .frame(width: 20, height: 20, alignment: .center)
                            SecureField("Password", text: $password)
                        }
                        .padding()
                        .background(Color.lightBlue.opacity(0.32))
                        .cornerRadius(15)
                        
                        Button(action: {
                            isLoading = true
    //                      signs in user using firebase authenticatinon
                            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                                if error != nil{
                                    alertMessage = error?.localizedDescription ?? ""
                                    showingAlert = true
                                    isLoading = false
                                    print("Failed to login user user. Error message: \(error?.localizedDescription ?? "Error occured while authenticating user")")
                                }
                                if let user = authResult?.user {
                                    print("User created")
                                    print("UserId: \(user.uid))")
                                    realDbRef.child("chatlyUsers").child(user.uid).child("usersInfo").getData { error, dataSnapshot in
                                        if let error = error{
                                            print("Error getting user info \(error)")
                                        }
                                        else if dataSnapshot.exists() {
                                            print("Got User information")
                                            print(dataSnapshot)
                                            let data = dataSnapshot.value as! Dictionary<String, String>
//                                            let userInfo = data as! User
                                            let userInfo = User(avatar: data["avatar"]!, email: data["email"]!, dateJoined: data["dateJoined"]!, uid: data["uid"]!, userName: data["userName"]!)
                                            //stores user info into UserDefaults
                                            UserDefaults.standard.storeCodableObjc(data: userInfo, forKey: "User")
                                            isLoading = false
            //                              takes user to the homepage
                                            shownPage = ShownPage.HomePage
                                        } else {
                                            print("No userInfo available")
                                        }
                                    }
                                }
                            }
                        }, label: {
                            Text("Login")
                                .font(.headline)
                                .frame(maxWidth:.infinity)
                                .foregroundColor(.white)
                                .frame(width: .infinity, height: 50, alignment: .center)
                                .background(Color.yellow)
                                .cornerRadius(15)
                        })
                        
                        HStack{
                            Text("Don't have an account?")
                            Button(action: {
                                shownPage = ShownPage.SignUpPage
                            }, label: {
                                Text("Sign Up")
                            })
                            .padding()
                        }
                        .padding()
                        
                        Divider()
                        
                        Button(action: {
                            print("Sign in with google clicked Clicked")
                        }, label: {
                            HStack(alignment:.center){
                                Spacer()
                                Image("GoogleLogo")
                                    .resizable()
                                    .foregroundColor(Color.gray)
                                    .frame(width: 20, height: 20, alignment: .center)
                                Text("Sign In With Google")
                                    .bold()
                                    .foregroundColor(.white)
                                    .frame(width: .infinity, height: 50, alignment: .center)
                                Spacer()
                            }
                            .background(Color.green)
                            .cornerRadius(15)
                        })
                    }
                    .padding()
         
                    Spacer()
                })//-VStack
                .padding()
                .ignoresSafeArea(.all)
            } //- Scrollview
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Log In Failed"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
            if isLoading {
                LoadingSpinnerView()
            }
        }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
