//
//  CurrencyCell.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import UIKit

class CurrencyCell: UITableViewCell {
    
    
    @IBOutlet weak var imgCurrency: UIImageView!
    @IBOutlet weak var lblCurrencyDescr: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
