//
//  Data.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

extension Data {
    
    mutating func append(_ string: String) {
        if let data = string.data(using: .utf8) { append(data) }
    }
}
