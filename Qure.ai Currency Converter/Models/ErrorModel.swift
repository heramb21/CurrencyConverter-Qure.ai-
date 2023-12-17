//
//  ErrorModel.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import Foundation


struct ErrorModel: Decodable {
    let Code: String?
    let Message: String?
}
