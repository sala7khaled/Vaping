//
//  APIData.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

/// The generic response for current API

struct APIData<T: Decodable>: Decodable {
    
    var status: String?
    var message: String?
    var data: T?
    var pagination: Pagination?
}
