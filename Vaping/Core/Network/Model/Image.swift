//
//  image.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

struct Image: Codable {
    
    var width: Int
    var height: Int
    var url: String
}

extension Image {
    
    enum CodingKeys: String, CodingKey {
        
        case width
        case height
        case url
    }
}
