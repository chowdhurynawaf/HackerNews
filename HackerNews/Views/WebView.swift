//
//  WebView.swift
//  HackerNews
//
//  Created by as on 6/4/20.
//  Copyright © 2020 nawaf. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit


struct WebView : UIViewRepresentable {
    let urlString : String?
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }

    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url  = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
