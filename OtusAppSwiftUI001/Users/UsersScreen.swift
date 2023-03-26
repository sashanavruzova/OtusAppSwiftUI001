//
//  UsersScreen.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 25/03/2023.
//

import SwiftUI

struct UsersScreen: View {
    
    @StateObject var userVM: UserViewModel = .init()
    
    @State private var isLoading: Bool = false
    
    var body: some View {
        ZStack {
            NavigationView {
                list
            }
            if isLoading {
                LoaderView()
            }
        }
    }
    
    var list: some View {
        List() {
            foodCells
        }.onViewDidLoad {
            isLoading = true
            getUsers()
        }
    }
    
    var foodCells: some View {
        ForEach(userVM.users, id: \.self) { user in
            cell(user: user)
        }
    }
    
    func avatar(user: User) -> some View {
        AsyncImage(url: URL(string: user.avatar)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 50, maxHeight: 50)
        } placeholder: {
            Image(systemName: "person")
        }
    }
    
    func cell(user: User) -> some View {
        NavigationLink(destination: UserScreen(firstName: user.firstName,
                                               lastName: user.lastName,
                                               email: user.email,
                                               gender: user.gender)) {
            avatar(user: user)
            Text("\(user.firstName) \(user.lastName)")
                .font(.body)
                .padding()
        }
    }
    
    func getUsers() {
        userVM.fetchData { error in
            isLoading = false
            if let error = error {
                print("Failed to fetch users: \(error.localizedDescription)")
            }
        }
    }
}

struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        UsersScreen()
    }
}
