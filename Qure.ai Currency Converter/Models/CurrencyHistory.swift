//
//  CurrencyHistory.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import Foundation

struct CurrencyHistory: Decodable {
    let symbol: String
    let description: String
    let rates: [CurrencyHistoryRate]
}

struct CurrencyHistoryRate: Decodable {
    let date: String
    let value: Double
}
