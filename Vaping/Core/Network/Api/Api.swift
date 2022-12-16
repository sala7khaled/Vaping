//
//  Api.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

/**
 APIConfigurations
 
 - parameter development: For the application during the development phase.
 - parameter stage: For the application during the testing phase.
 - parameter production: For the application during the launching on App store.
 */

let API = Api(config: .production)

enum APIConfiguration {

    case development
    case stage
    case production
}

final class Api {
    
    let config: APIConfiguration
    
    var baseUrl: String {
        switch config {
        case .development:
            return "https://639b997ebbc4833c377db723.mockapi.io/api/"
        case .stage:
            return "https://639b997ebbc4833c377db723.mockapi.io/api/"
        case .production:
            return "https://639b997ebbc4833c377db723.mockapi.io/api/"
        }
    }
    
    init(config: APIConfiguration) {
        self.config = config
    }
     
    // MARK: - PRODUCT
    
    let SERVICE_PRODUCTS = "getproducts"
    
}
