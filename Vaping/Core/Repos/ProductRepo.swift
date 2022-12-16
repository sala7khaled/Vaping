//
//  UsersRepo.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class ProductRepo: Repo {
    
    static let shared = ProductRepo()
    
    var products: [Product]? {
        return try? UserDefaults.standard.retrive(type: [Product].self, key: .product)
    }
    
    
    // I should pass the page number here like: Api.Product.getProduct(pageNum: pageNumber)
    // But since I can only retrive same data from MockAPI provider,
    // I'll load the same data and append it in the list and so, as you declare on the recived file Task_4.pdf
    
    func getProduct(pageNumber: Int, _ completion: @escaping (APIResponse<[Product]>) -> ()) {
        provider.request(type: [Product].self, service: Api.Product.getProduct, completion: completion)
    }

}
