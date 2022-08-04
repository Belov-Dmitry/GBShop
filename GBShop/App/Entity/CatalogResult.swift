//
//  CatalogResult.swift
//  GBShop
//
//  Created by Dmitry Belov on 27.07.2022.
//

import Foundation

struct CatalogResult: Codable {
    let pageNumber: Int
    let products: [ProductResult]
    
    enum CodingKeys: String, CodingKey {
        case pageNumber = "page_number"
        case products
    }
}

struct ProductResult: Codable {
    let idProduct: Int
    let productName: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case idProduct = "id_product"
        case productName = "product_name"
        case price
    }
}
