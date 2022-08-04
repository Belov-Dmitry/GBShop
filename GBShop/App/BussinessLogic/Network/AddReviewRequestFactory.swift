//
//  AddReviewRequestFactory.swift
//  GBShop
//
//  Created by Dmitry Belov on 04.08.2022.
//

import Foundation
import Alamofire

protocol AddReviewRequestFactory {
    func addReview(userId: Int, text: String, complitionHandler: @escaping (AFDataResponse<AddReviewResult>) -> Void)
}
