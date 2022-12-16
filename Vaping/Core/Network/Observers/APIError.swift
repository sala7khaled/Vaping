//
//  APIError.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

enum APIErrorType {

    case server
    case noData
    case parsing
    case string
    case network
    case known
}

struct APIError {
    
    var type: APIErrorType
    var code: Int? = 0
    var message: String?
}
