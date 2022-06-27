//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Dmitry Belov on 25.06.2022.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userName: String,
               password: String,
               completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
}
