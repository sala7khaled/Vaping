//
//  URLComponents+Extension.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

extension URLComponents {
    
    init(service: ServiceProtocol) {
        let urlString = API.baseUrl.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let baseUrl = URL(string: urlString)
        let url = baseUrl!.appendingPathComponent(service.path)
        
        /// Build the URL
        
        self.init(url: url, resolvingAgainstBaseURL: false)!
        
        /// Set the spasific guery params which assigned by routes
        
        guard let parameters = service.parameters else { return }
        queryItems = parameters.map { key, value in
            return URLQueryItem(name: key, value: String(describing: value))
        }
    }
}
