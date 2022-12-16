//
//  OnboardingController.swift
//  stationclub
//
//  Created by Salah Khaled on 31/07/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class OnboardingController: BaseController {
    
    @IBOutlet weak var collectionView: IntrinsicCollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnNext: AppButton!
    
    var presenter: OnboardingPresenterInterface!
    
    var currentPage = 0 {
        didSet {
            
            pageControl.currentPage = currentPage
            
            // Configure Button title based on current page
            if currentPage == onboardList.count - 1 {
                btnNext.setTitle("get_started".l())
            } else {
                btnNext.setTitle("continue".l())
            }
        }
    }
    var onboardList : [OnboardModel] = []
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        initCollectionView()
    }
    
    func setupViews() {
        
        setupData()
        btnNext.setTitle("continue".l())
        
        pageControl.numberOfPages = Images.onboarding.count
    }
    
    func setupData () {
        onboardList.removeAll()
        
        var count: Int = 1
        
        for image in Images.onboarding {
            onboardList.append(OnboardModel(title: "onboarding_title_\(count)".l(),
                                            position: "value_proposition".l() + "\(count)",
                desc: "onboarding_description_\(count)".l(),
                image: image))
            count = count + 1
        }
        
        
    }
    
    
    // MARK: - Events
    
    @IBAction func btnNextClicked(_ sender: Any) {
        
        if currentPage == onboardList.count - 1 {
            presenter.didClickedGetStarted()
        } else {
            currentPage += 1
            let indexPath = IndexPath(item: currentPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
}

extension OnboardingController: OnboardingView {
    
}
