//
//  OnboardingInteractor.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class ProductInteractor: ProductInteractorInterface {
    
    weak var output: ProductInteractorOutput?
    
    func getProducts(pageNum: Int) {
        
        if ReachabilityManager.isOnline() {
            
            ProductRepo.shared.getProduct(pageNumber: pageNum) { [ weak self ] response in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    switch (response) {
                    case let .onSuccess(response):
                        try? UserDefaults.standard.store(object: response, key: .product)
                        self.output?.didGetProducts(response: response)
                    case let .onFailure(error):
                        self.output?.didFailedGetProducts(error: error)
                    }
                }
            }
            
            // Retrive from Cashing
        } else if ProductRepo.shared.products != nil {
            output?.didGetProducts(response: ProductRepo.shared.products!)
        } else {
            output?.didFailedGetProducts(error: APIError(type: .network, message: "No internet connection!".l()))
        }
    }
    
    
}
