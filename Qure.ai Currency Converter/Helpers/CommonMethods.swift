//
//  CommonMethods.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import Foundation
import UIKit

func showLoader(view: UIView) -> UIActivityIndicatorView {
    let spinner = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 40, height:40))
    spinner.backgroundColor = UIColor.black.withAlphaComponent(0.4)
    spinner.layer.cornerRadius = 3.0
    spinner.clipsToBounds = true
    spinner.hidesWhenStopped = true
    spinner.style = UIActivityIndicatorView.Style.white
    spinner.center = view.center
    view.addSubview(spinner)
    spinner.startAnimating()
    UIApplication.shared.beginIgnoringInteractionEvents()
    return spinner
}
