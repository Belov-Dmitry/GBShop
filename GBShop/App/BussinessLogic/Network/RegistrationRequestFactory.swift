//
//  RegistrationRequestFactory.swift
//  GBShop
//
//  Created by Dmitry Belov on 25.07.2022.
//

import Foundation
import Alamofire

protocol RegistrationRequestFactory {
    func register(user: User, complitionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void)
}
