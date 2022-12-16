//
//  Response.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

enum APIResponse<T> {

    case onSuccess(T)
    case onFailure(APIError)
}
