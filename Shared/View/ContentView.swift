//
//  ContentView.swift
//  Shared
//
//  Created by Amir Pahadi on 7/7/21.
//

import SwiftUI
import FirebaseAuth
struct ContentView: View {
//  stores the info about the page shown on the app screen
    @AppStorage("pageShown") var shownPage:ShownPage = ShownPage.LoginPage
    let user = Auth.auth().currentUser
    var body: some View {
        if (shownPage == ShownPage.SignUpPage){
            SignUpPage()
        }
        else if (shownPage == ShownPage.LoginPage){
            LoginPage()
        }
        else if (shownPage == ShownPage.HomePage && user != nil ){
            HomePage()
        }
        
        else if (shownPage == ShownPage.AddPeopleView && user != nil ){
            AddPeopleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum ShownPage: Int{
    case LoginPage  = 0
    case SignUpPage = 1
    case HomePage = 2
    case ChatPage = 3
    case AddPeopleView = 4
}

