//
//  GoodByIdResult.swift
//  GBShop
//
//  Created by Dmitry Belov on 28.07.2022.
//

import Foundation

struct GoodByIdResult: Codable {
    let result: Int
    let productName: String
    let productPrice: Int
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
        case result
        case productName = "product_name"
        case productPrice = "product_price"
        case productDescription = "product_description"
    }
}
