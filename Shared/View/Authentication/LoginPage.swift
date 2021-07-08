//
//  LoginPage.swift
//  Chatly
//
//  Created by Amir Pahadi on 7/7/21.
//

import SwiftUI

struct LoginPage: View {
//  MARK- PROPERTIES
    @State var email:String = ""
    @State var password:String = ""
    //  stores the info about the page shown on the app screen
    @AppStorage("pageShown") var shownPage = ShownPage.LoginPage
    
    var body: some View {
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
                        shownPage = ShownPage.HomePage
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
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
