//
//  UserViewModel.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 26/03/2023.
//

import Foundation

final class UserViewModel: ObservableObject {
    @Published private(set) var users: [User] = []
    let dataService = DataService()
    
    func fetchData(completion: @escaping (Error?) -> Void) {
      dataService.fetchData { result in
        switch result {
        case .success(let users):
            DispatchQueue.main.async {
                self.users = users
            }
          completion(nil)
        case .failure(let error):
          completion(error)
        }
      }
    }
}
