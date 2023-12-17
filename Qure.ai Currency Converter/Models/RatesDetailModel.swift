//
//  RatesDetailModel.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import Foundation


struct RatesDetailModel: Decodable {
    let base: String
    let date: String
    let rates: [RateDetail]
}

struct RateDetail: Decodable {
    let symbol: String
    let currency: String
    let value: Double
}
