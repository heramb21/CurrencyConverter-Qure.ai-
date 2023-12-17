//
//  CurrencyHistoryCell.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import UIKit

class CurrencyHistoryCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
