//
//  ContentView.swift
//  HackerNews
//
//  Created by as on 6/3/20.
//  Copyright © 2020 nawaf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject  var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{
            
            List(networkManager.posts){ post in
                NavigationLink(destination: DetailsView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Hacker News")
            
        }
            
        .onAppear {
            self.networkManager.fetchdata()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




