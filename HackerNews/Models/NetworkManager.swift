//
//  NetworkManager.swift
//  HackerNews
//
//  Created by as on 6/3/20.
//  Copyright © 2020 nawaf. All rights reserved.
//

import Foundation


class NetworkManager : ObservableObject{
   @Published var posts = [Post]()
    func fetchdata(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")
        {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safedata = data{
                        do{
                 let results =  try decoder.decode(Results.self, from: safedata)
                            
                            DispatchQueue.main.async{
                            self.posts = results.hits
                    }
                        }
                        catch{
                            print("error")
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
