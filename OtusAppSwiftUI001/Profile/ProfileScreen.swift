//
//  ProfileScreen.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 23/03/2023.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State var isModal: Bool = false
    
    var body: some View {
        VStack {
            Group {
                Button {
                    isModal.toggle()
                } label: {
                    Text("Log out")
                }
                .buttonStyle(.borderedProminent)
                .sheet(isPresented: $isModal) {
                    SettingsScreen()
                }
            }
        }
    }
}

struct SettingsScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("You are logged out")
                .font(.system(size: 16))
        }
        Button {
            presentationMode.wrappedValue.dismiss()
        } label: {
            Text("Close")
        }
        .buttonStyle(.borderedProminent)
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
