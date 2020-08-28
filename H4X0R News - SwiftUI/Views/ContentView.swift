//
//  ContentView.swift
//  H4X0R News - SwiftUI
//
//  Created by Ari Jane on 5/17/20.
//  Copyright © 2020 Ari Jane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {  //navigation head
            List(networkManager.posts) { post in  //create list/table view
                NavigationLink(destination: DetailView(url: post.url)) {  //make each cell clickable
                    HStack {  //cell content
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fectchData()  //get cell content
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
let posts = [
    Post(id:"1", title: "Hello"),
    Post(id:"2", title: "Bonjour"),
    Post(id:"3", title: "Hola")
]
*/
