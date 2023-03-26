//
//  MessagesScreen.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 23/03/2023.
//

import SwiftUI

struct MessagesScreen: View {
    @Binding var tabSelection: Int
    
    var body: some View {
        Button {
            self.tabSelection = 1
        } label: {
            Text("Write a message")
        }
    }
}

struct DashBoardScreen_Previews: PreviewProvider {
    static var previews: some View {
        MessagesScreen(tabSelection: Binding.constant(1))
    }
}
