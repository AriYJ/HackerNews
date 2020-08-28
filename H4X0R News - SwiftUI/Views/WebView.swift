//
//  WebView.swift
//  H4X0R News - SwiftUI
//
//  Created by Ari Jane on 5/17/20.
//  Copyright © 2020 Ari Jane. All rights reserved.
//  Use this to make an in-app web browser

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?  //one problem is that when the url we get starts with http instead of https, we won't be open to be directed there
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {  //if urlString is not nil
            if let url = URL(string: safeString) {  //if url is not nil
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
