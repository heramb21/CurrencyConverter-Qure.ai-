//
//  ConversionHistoryCell.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 17/12/23.
//

import UIKit

class ConversionHistoryCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imgLeftCurrency: UIImageView!
    @IBOutlet weak var lblLeftCurrency: UILabel!
    @IBOutlet weak var imgRightCurrency: UIImageView!
    @IBOutlet weak var lblRightCurrency: UILabel!
    @IBOutlet weak var txtLeftInput: UITextField!
    @IBOutlet weak var txtRightInput: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
