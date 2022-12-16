//
//  RootRouter.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import UIKit

class RootRouter {
    
    static func pushVC(_ vc: UIViewController, in viewController: UIViewController, animated: Bool = true) {
        viewController.navigationController?.pushViewController(vc, animated: animated)
    }
    
    static func presentRootVC(with vc: UIViewController) {
        presentRoot(vc)
    }
    
    static func presentRootNav(with vc: UIViewController) {
        let nav = NavController(rootViewController: vc)
        presentRoot(nav)
    }
    
    static func presentRootScreen(in window: UIWindow?, vc: UIViewController) {
        window?.makeKeyAndVisible()
        window?.rootViewController = vc
    }
    
    static func presentRoot(_ vc: UIViewController) {
        let window = UIApplication.shared.windows.filter { $0.isKeyWindow }.first
        window?.makeKeyAndVisible()
        window?.rootViewController = vc
    }
    
    static func resetApp() {
        resetApp(with: OnboardingRouter.assembleModule())
    }
    
    static func resetApp(with vc: UIViewController) {
        let window = UIApplication.shared.connectedScenes
            .filter({ $0.activationState == .foregroundActive })
            .map({$0 as? UIWindowScene})
            .compactMap({ $0 })
            .first?.windows
            .filter({ $0.isKeyWindow }).first
        
        window?.makeKeyAndVisible()
        window?.rootViewController = vc
    }
}
