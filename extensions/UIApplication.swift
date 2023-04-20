//
//  UIApplication.swift
//  webLMS
//
//  Created by Ardak Tursunbayev on 01.02.2023.
//

import Foundation
import SwiftUI

extension UIApplication{
    
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
