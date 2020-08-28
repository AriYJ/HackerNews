//
//  DetailView.swift
//  H4X0R News - SwiftUI
//
//  Created by Ari Jane on 5/17/20.
//  Copyright © 2020 Ari Jane. All rights reserved.
//

import SwiftUI

struct DetailView: View {  //next level up would be to find the blank space that comes with navigation bar in detail views
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
    
    
    
