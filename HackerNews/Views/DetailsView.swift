//
//  DetailsView.swift
//  HackerNews
//
//  Created by as on 6/3/20.
//  Copyright © 2020 nawaf. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailsView: View {
    
    let url : String?
    var body: some View {
        WebView(urlString : url)
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(url: "https://www.google.com")
    }
}



