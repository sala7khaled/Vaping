//
//  OnboardingContract.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

protocol ProductView: AnyObject {
    var presenter: ProductPresenterInterface! { get set }
    
    func showViewLoading()
    func hideViewLoading()
    
    func reloadUI()
}
    
protocol ProductPresenterInterface: AnyObject {
    var view: ProductView? { get set }
    var router: ProductRouterInterface! { get set }
    var interactor: ProductInteractorInterface! { get set }
    
    var products: [Product]! { get set }
    
    func viewDidLoad()
    func loadNextPage()
    
    func showError(with message: String?)
}
    
protocol ProductInteractorInterface: AnyObject {
    var output: ProductInteractorOutput? { get set }
    
    func getProducts(pageNum: Int)
}
    
protocol ProductInteractorOutput: AnyObject {
        
    func didGetProducts(response: [Product])
    func didFailedGetProducts(error: APIError)
}
    
protocol ProductRouterInterface: AnyObject {
    var viewController: UIViewController? { get set }
    
    func presentError(with message: String?)
    
    static func assembleModule() -> UIViewController
}
