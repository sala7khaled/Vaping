//
//  Onboarding+CollectionView.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

extension ProductController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func initCollectionView() {
        collectionView.initialize(cellClass: ProductCell.self, delegate: self, dataSource: self)
        collectionView.enableAutomaticCellSize()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.products?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeue(cellClass: ProductCell.self, indexPath: indexPath)
        if let product = presenter.products?[indexPath.row] {
            cell.configure(with: product)
        }
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = CGSize( width: (collectionView.frame.width - 10 ) / 2,
                          height: collectionView.frame.height / 2)

        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        if indexPath.row == presenter.products.count - 1 {
            presenter.loadNextPage()
        }
    }
}
