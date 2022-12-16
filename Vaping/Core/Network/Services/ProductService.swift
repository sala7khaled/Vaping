//
//  UsersService.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

extension Api {
    
    enum  Product: ServiceProtocol {
        
        case getProduct
        
        var path: String {
            switch self {
            case .getProduct:
                return API.SERVICE_PRODUCTS
            }
        }
        
        var method: HTTPMethod {
            switch self {
            case .getProduct:
                return .GET
            }
        }
        
        var parameters: [String : Any]? {
            switch self {
            case .getProduct:
                return nil
            }
        }
        
        var headers: Headers? {
            switch self {
            case .getProduct:
                return nil
            }
        }
        
        var body: Any? {
            switch self {
            case .getProduct:
                return nil
            }
        }
    }
    
    
}
