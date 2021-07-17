//
//  SignUpPage.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/7/21.
//

import SwiftUI
import FirebaseAuth
import FirebaseDatabase

struct SignUpPage: View {
    //  MARK- PROPERTIES
    @State var name:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State var alertMessage:String = ""
    @State private var showingAlert = false
    private var dbRef: DatabaseReference = Database.database().reference()
    
    @AppStorage("pageShown") var shownPage = ShownPage.SignUpPage
        
        var body: some View {
            ScrollView{
                VStack(alignment: .center, spacing: nil, content: {
                    Spacer(minLength: 24)
                    
                    Image("logo")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                   
                    Text("Create an account")
                        .font(.title)
                        .bold()
                        .kerning(1.5)
                
                    VStack{
                        
                        HStack{
                            Image(systemName: "person")
                                .resizable()
                                .foregroundColor(Color.gray)
                                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            TextField("Full Name", text: $name)
                        }
                        .padding()
                        .background(Color.lightBlue.opacity(0.32))
                        .cornerRadius(15)

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
//                          creates user in firebase authentication
                            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                                if let error = error {
                                    alertMessage = error.localizedDescription
                                    showingAlert = true
                                    print("Failed to sign up user. Error: \(error.localizedDescription)")
                                }
                                if let user = authResult?.user {
                                    print("User created")
                                    print("UserId: \(user.uid))")
//                                  stores userinfo in the realtime db
                                    let data = [
                                        "uid":user.uid,
                                        "email":email,
                                        "fullName":name
                                    ]
                                    dbRef.child("chatlyUsers").child(user.uid).child("usersInfo").setValue(data) { cError, cRef in
                                        if let error = error {
                                            print("Error: \(error.localizedDescription )")
                                        }
                                        else {
                                            print("user info stored in the db")
                                        }
                                    }
//                                  takes user to the homepage
                                    shownPage = ShownPage.HomePage
                                }
                            }
                        }, label: {
                            Text("Sign Up")
                                .font(.headline)
                                .frame(maxWidth:.infinity)
                                .foregroundColor(.white)
                                .frame(width: .infinity, height: 50, alignment: .center)
                                .background(Color.yellow)
                                .cornerRadius(15)
                        })
                        
                        HStack{
                            Text("Already have an account?")
                            Button(action: {
                                shownPage = ShownPage.LoginPage
                            }, label: {
                                Text("Login")
                            })
                        }
                        .padding()
                        
                        Divider()
                        
                        Button(action: {
                            print("Sign up with google clicked Clicked")
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
                
            }//ScrollView
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Sign Up Failed"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}
