//
//  Registration.swift
//  GBShop
//
//  Created by Dmitry Belov on 25.07.2022.
//

import Foundation
import Alamofire

class Registration: AbstractRequestFactory {
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

extension Registration: RegistrationRequestFactory{
    func register(user: User, complitionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void) {
        let requestModel = Register(baseUrl: baseUrl, user: user)
        self.request(request: requestModel, completionHandler: complitionHandler)
    }
}

extension Registration{
    struct Register: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "registerUser.json"
        
        let user: User
        var parameters: Parameters? {
            return [
                "id_user": user.id,
                "username": user.login,
                "password": user.password ?? "",
                "email": user.email ?? "",
                "gender": user.gender ?? "",
                "credit_card": user.creditCard ?? "",
                "bio": user.bio ?? ""
            ]
        }
    }
}
