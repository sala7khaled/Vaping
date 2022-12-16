//
//  OnboardingRouter.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class ProductRouter: ProductRouterInterface {
    
    weak var viewController: UIViewController?
    
    func presentError(with message: String?) {
        viewController?.showError(message: message)
    }
    
    static func assembleModule() -> UIViewController {
        let view: ProductController = ProductController.loadFromNib()
        
        let presenter = ProductPresenter()
        let interactor = ProductInteractor()
        let router = ProductRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.output = presenter
        router.viewController = view
        
        return view
    }
}
