//
//  PostData.swift
//  H4X0R News - SwiftUI
//
//  Created by Ari Jane on 5/17/20.
//  Copyright © 2020 Ari Jane. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?  //bcs for some posts the url is nil
}
