//
//  Model.swift
//  24.Davaleba
//
//  Created by Data on 08.05.24.
//

import Foundation

struct Photo: Decodable {
    let id: String
    let urls: URLs
}

struct URLs: Decodable {
    let regular: String
}
