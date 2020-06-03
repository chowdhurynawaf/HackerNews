//
//  PostData.swift
//  HackerNews
//
//  Created by as on 6/3/20.
//  Copyright © 2020 nawaf. All rights reserved.
//

import Foundation

struct Results : Decodable {
    let hits : [Post]
}

struct Post : Decodable,Identifiable  {
    var id : String{
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
