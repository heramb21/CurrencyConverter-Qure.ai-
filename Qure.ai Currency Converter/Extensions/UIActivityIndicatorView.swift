//
//  UIActivityIndicatorView.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import Foundation
import UIKit


extension UIActivityIndicatorView {

    func dismissLoader() {
        self.stopAnimating()
        UIApplication.shared.endIgnoringInteractionEvents()
    }

}
