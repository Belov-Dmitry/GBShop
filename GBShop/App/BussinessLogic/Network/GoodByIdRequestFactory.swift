//
//  GoodByIdRequestFactory.swift
//  GBShop
//
//  Created by Dmitry Belov on 28.07.2022.
//

import Foundation
import Alamofire

protocol GoodByIdRequestFactory {
    func getGoodById(productId: Int, complitionHandler: @escaping (AFDataResponse<GoodByIdResult>) -> Void)
}
