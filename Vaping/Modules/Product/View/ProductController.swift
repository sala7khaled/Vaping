//
//  OnboardingController.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class ProductController: BaseController {
    
    @IBOutlet weak var collectionView: IntrinsicCollectionView!
    
    var presenter: ProductPresenterInterface!
    
    override func viewWillAppear(_ animated: Bool) {
        self.title = "Products List".l()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
        initCollectionView()
    }
    
}

extension ProductController: ProductView {
    
    func showViewLoading() {
        showLoading()
    }
    
    func hideViewLoading() {
        hideLoading()
    }
    
    func reloadUI() {
        collectionView.reloadData()
    }
}
