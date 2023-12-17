//
//  ViewController.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    // -----------------
    @IBOutlet weak var imgStatus: UIImageView!
    @IBOutlet weak var statusIndicator: UIActivityIndicatorView!

    // MARK: - Main methods
    func checkIfApiIsOnLine() {
        imgStatus.image = nil
        statusIndicator.startAnimating()
        let url = Routes.apiCheckOnLine
        ApiService.shared.fetchApiData(urlString: url) { (response: ResultModel?, error: ErrorModel?) in
            if let error = error {
                self.showAlertMessage(titleStr: "Error", messageStr: error.Message!)
            }
            print("API is online: \(response!.result)")
            self.imgStatus.image = response!.result ? #imageLiteral(resourceName: "online") : #imageLiteral(resourceName: "offline")
            self.statusIndicator.stopAnimating()
        }
    }

    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Currency Converter"
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.navigationBar.prefersLargeTitles = false
        checkIfApiIsOnLine()
    }


}

