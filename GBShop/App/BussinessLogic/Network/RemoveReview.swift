//
//  RemoveReview.swift
//  GBShop
//
//  Created by Dmitry Belov on 04.08.2022.
//

import Foundation
import Alamofire

class RemoveReview: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string:
                        "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!
    
    init(
        errorParser: AbstractErrorParser,
        sessionManager: Session,
        queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
            self.errorParser = errorParser
            self.sessionManager = sessionManager
            self.queue = queue
        }
}

extension RemoveReview: RemoveReviewRequestFactory {
    func removeReview(commentID: Int, complitionHandler: @escaping (AFDataResponse<RemoveReviewResult>) -> Void) {
        let requestModel = RemoveReview(baseUrl: baseUrl, commentID: commentID)
        self.request(request: requestModel, completionHandler: complitionHandler)
    }
}

extension RemoveReview{
    struct RemoveReview: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "removeReview.json"
        
        let commentID: Int
        var parameters: Parameters? {
            return [
                "id_comment": commentID
            ]
        }
    }
}
