//
//  Model.swift
//  19.davaleba
//
//  Created by Data on 23.04.24.
//

import Foundation



struct Desctiption: Decodable {
    var title: String
    var time: String
    var url: String
    var type: Int
    var photoUrl: String
    var photoAlt: String
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case time = "Time"
        case url = "Url"
        case type = "Type"
        case photoUrl = "PhotoUrl"
        case photoAlt = "PhotoAlt"
    }
}

struct Lists: Decodable {
    var list: [Desctiption]
    
    enum CodingKeys: String, CodingKey {
        case list = "List"
    }
}
