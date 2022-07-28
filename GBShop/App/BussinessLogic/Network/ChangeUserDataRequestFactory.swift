//
//  ChangeUserDataRequestFactory.swift
//  GBShop
//
//  Created by Dmitry Belov on 25.07.2022.
//

import Foundation
import Alamofire

protocol ChangeUserDataRequestFactory {
    func changeUserData(user: User, complitionHandler: @escaping
    (AFDataResponse<ChangeUserDataResult>) -> Void)
}
