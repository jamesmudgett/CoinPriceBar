//
//  Money.swift
//  CoinPriceBar
//
//  Created by Thanh Pham on 12/12/17.
//  Copyright © 2017 Thanh Pham. All rights reserved.
//

typealias FreedomMoney = Coin

enum Coin: String {
  case BTC
  case BAT
  case XLM
  case XRP
  case SC
  case ETH
}

enum FiatMoney: String {
  case USD
}

extension Coin {

  func priceProvider() -> CoinPriceProvider {
    switch self {
    case .BTC, .ETH: return CoinbasePriceProvider()
    case .SC: return BittrexPriceProvider()
    default: return BittrexPriceProvider()
    }
  }
}

extension Coin {

  func unicode() -> String {
    switch self {
    case .BTC: return "$BTC"
    case .BAT: return "$BAT"
    case .XLM: return "$XLM"
    case .XRP: return "$XRP"
    case .SC: return "$SC"
    case .ETH: return "$ETH"
    }
  }

  func color() -> NSColor {
    switch self {
    case .BTC: return NSColor(displayP3Red: 244 / 255, green: 180 / 255, blue: 69 / 255, alpha: 1)
    case .BAT: return NSColor(displayP3Red: 154 / 255, green: 193 / 255, blue: 98 / 255, alpha: 1)
    case .XLM: return NSColor(displayP3Red: 115 / 255, green: 123 / 255, blue: 182 / 255, alpha: 1)
    case .XRP: return NSColor(displayP3Red: 182 / 255, green: 180 / 255, blue: 182 / 255, alpha: 1)
    case .SC: return NSColor(displayP3Red: 62 / 255, green: 139 / 255, blue: 192 / 255, alpha: 1)
    case .ETH: return NSColor(displayP3Red: 227 / 255, green: 227 / 255, blue: 227 / 255, alpha: 1)
    }
  }
}
