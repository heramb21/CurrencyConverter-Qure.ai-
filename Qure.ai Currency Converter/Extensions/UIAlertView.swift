//
//  UIAlertView.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlertMessage(titleStr:String, messageStr:String) {
        let alert = UIAlertController(title: titleStr, message: messageStr, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel) { (alert) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: nil)
    }

}

extension ApiService {
    func showAlertMessage(titleStr:String, messageStr:String) {
        let alert = UIAlertController(title: titleStr, message:messageStr, preferredStyle: UIAlertController.Style.alert)
                
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
               
        // show the alert
        let scene = UIApplication.shared.connectedScenes.first
        if let sd : SceneDelegate = (scene?.delegate as? SceneDelegate) {
            sd.window?.rootViewController?.present(alert, animated: true, completion: nil)
        }
    }
}
