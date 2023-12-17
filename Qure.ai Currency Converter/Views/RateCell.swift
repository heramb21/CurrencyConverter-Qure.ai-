//
//  RateCell.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import UIKit

class RateCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var imgCurrency: UIImageView!
    @IBOutlet weak var lblCurrencyDescr: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblCurrencyIso: UILabel!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
