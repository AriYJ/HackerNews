//
//  NetworkManager.swift
//  H4X0R News - SwiftUI
//
//  Created by Ari Jane on 5/17/20.
//  Copyright © 2020 Ari Jane. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {  //pulling main page content from Hacker News
    
    @Published var posts = [Post]()
    
    func fectchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async { //bcs posts is a property other objects are listening to (UI update)
                                self.posts = results.hits
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
