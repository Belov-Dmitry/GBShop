//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by Dmitry Belov on 24.06.2022.
//

import Foundation
protocol AbstractErrorParser {
    func parse (_ result: Error) -> Error
    func parse (response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
