//
//  ContentView.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 23/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            
            MessagesScreen(tabSelection: $tabSelection)
                .tag(0)
                .tabItem {
                    Label("Messages", systemImage: "message")
                }
            UsersScreen()
                .tag(1)
                .tabItem {
                    Label("Users", systemImage: "person.2")
                }
            ProfileScreen()
                .tag(2)
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
