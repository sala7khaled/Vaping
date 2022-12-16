//
//  String+Extensions.swift
//  Vaping
//
//  Created by Salah Khaled on 15/12/2022.
//  Copyright © 2022 Salah Khaled. All rights reserved.
//

import Foundation

extension String {
    
    func l() -> String {
        return Bundle.main.localizedString(forKey: self, value: "", table: nil)
    }
    
}
