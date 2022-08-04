//
//  CatalogRequestFactory.swift
//  GBShop
//
//  Created by Dmitry Belov on 27.07.2022.
//
import Foundation
import Alamofire

protocol CatalogRequestFactory {
    func getCatalog(pageNumber: Int, categoryId: Int, completionHandler: @escaping (AFDataResponse<[ProductResult]>) -> Void)
}
