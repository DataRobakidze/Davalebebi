//
//  Model.swift
//  23.Davaleba
//
//  Created by Data on 03.05.24.
//

import UIKit

struct Facts: Decodable {
    var fact: String
    var length: Int
}
 
struct FactsInfo: Decodable {
    var data: [Facts]
}
