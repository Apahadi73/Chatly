//
//  ContentView.swift
//  Shared
//
//  Created by Amir Pahadi on 7/7/21.
//

import SwiftUI

struct ContentView: View {
    
//  stores the info about the page shown on the app screen
    @AppStorage("pageShown") var shownPage:ShownPage = ShownPage.SignUpPage
    
    var body: some View {
        if (shownPage == ShownPage.SignUpPage){
            SignUpPage()
        }
        else if (shownPage == ShownPage.LoginPage){
            LoginPage()
        }
        else {
            Text("Hi there")
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
}

