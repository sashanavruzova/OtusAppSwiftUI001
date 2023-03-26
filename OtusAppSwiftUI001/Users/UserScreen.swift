//
//  UserScreen.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 25/03/2023.
//

import SwiftUI

struct UserScreen: View {
    
    let firstName: String
    let lastName: String
    let email: String
    let gender: String
    
    
    var body: some View {
        Group {
            Text("First Name: \(firstName)")
            Text("Last Name: \(lastName)")
            Text("Gender: \(gender)")
            Text("Email: \(email)")
        }
        .font(.system(size: 16))
    }
}

struct FoodScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserScreen(firstName: "Sasha", lastName: "Navruzov", email: "sasha@sasha.com", gender: "female")
    }
}
