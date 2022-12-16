//
//  User.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

class Product: NSObject, NSCoding, Codable {

    var id: Int
    var desc: String
    var image: Image
    var price: Int

    func encode(with coder: NSCoder) {
        coder.encode(id, forKey: "id")
        coder.encode(desc, forKey: "productDescription")
        coder.encode(image, forKey: "image")
        coder.encode(price, forKey: "price")
    }

    required init?(coder: NSCoder) {
        self.id = coder.decodeObject(forKey: "id") as? Int ?? 0
        self.desc = coder.decodeObject(forKey: "productDescription") as? String ?? ""
        self.image = coder.decodeObject(forKey: "image") as? Image ?? Image(width: 0, height: 0, url: "")
        self.price = coder.decodeObject(forKey: "price") as? Int ?? 0

    }
}

extension Product {

    enum CodingKeys: String, CodingKey {

        case id
        case desc = "productDescription"
        case image
        case price
    }
}
