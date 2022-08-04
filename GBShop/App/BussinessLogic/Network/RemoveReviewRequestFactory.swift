//
//  RemoveReviewRequestFactory.swift
//  GBShop
//
//  Created by Dmitry Belov on 04.08.2022.
//

import Foundation
import Alamofire

protocol RemoveReviewRequestFactory {
    func removeReview(commentID: Int, complitionHandler: @escaping (AFDataResponse<RemoveReviewResult>) -> Void)
}
