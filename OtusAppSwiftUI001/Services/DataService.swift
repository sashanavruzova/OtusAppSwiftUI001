//
//  DataService.swift
//  OtusAppSwiftUI001
//
//  Created by Sasha Navruzova on 25/03/2023.
//

import Foundation

class DataService {
  func fetchData(completion: @escaping (Result<[User], Error>) -> Void) {
    guard let url = URL(string: "https://api.mockaroo.com/api/729a5c80?count=120&key=947b40d0") else {
      print("Invalid URL")
      return
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
      if let error = error {
        completion(.failure(error))
        return
      }
      
      guard let data = data else {
        completion(.failure(NSError(domain: "sashanavruzova.OtusAppSwiftUI001", code: 0, userInfo: [NSLocalizedDescriptionKey: "Data not found"])))
        return
      }
      
      do {
        let decoder = JSONDecoder()
        let users = try decoder.decode([User].self, from: data)
        completion(.success(users))
      } catch {
        completion(.failure(error))
      }
    }.resume()

  }
}
