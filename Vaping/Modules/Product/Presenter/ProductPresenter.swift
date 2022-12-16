//
//  OnboardingPresenter.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class ProductPresenter: ProductPresenterInterface {

    weak var view: ProductView?
    var router: ProductRouterInterface!
    var interactor: ProductInteractorInterface!
    
    var currentPage: Int = 0
    var products: [Product]! = []
    
    func viewDidLoad() {
        view?.showViewLoading()
        interactor.getProducts(pageNum: currentPage)
    }
    
    func loadNextPage() {
        if ReachabilityManager.isOnline() {
            currentPage = currentPage + 1
            interactor.getProducts(pageNum: currentPage)
        }
    }

    func showError(with message: String?) {
        router.presentError(with: message)
    }
}

    
extension ProductPresenter: ProductInteractorOutput {
    
    func didGetProducts(response: [Product]) {
        view?.hideViewLoading()
        self.products = self.products + response
        view?.reloadUI()
    }
    
    func didFailedGetProducts(error: APIError) {
        view?.hideViewLoading()
        router.presentError(with: error.message)
    }
    
}
