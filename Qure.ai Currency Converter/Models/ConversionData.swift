//
//  ConversionData.swift
//  Qure.ai Currency Converter
//
//  Created by Heramb on 16/12/23.
//

import Foundation


struct ConversionData {
    var fromCurrency: String?
    var toCurrency: String?
    var convertDate: String?
    var fromAmount: Double?
}

struct ConversionDetails {
    var source: String?
    var amount: String?
}

struct ConversionCurrencyData {
    var currency: Currency?
    var details: ConversionDetails?
}

struct ConversionHistoryData {
    var fromCurrency: String?
    var toCurrency: String?
    var convertDate: String?
    var fromAmount: Double?
    var toAmount: Double?
}
