//
//  ErrorResponse.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/1/21.
//

import Foundation

struct Err : Codable {
    let name : String?
    let message : String?
}

struct ErrorResponse : Codable {
    let error : Err?
}
