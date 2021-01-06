//
//  UserNameVO.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/1/21.
//

import Foundation

/*
 {
     "_id": "5fc1ef9fe11c671e8433454c",
     "name": "Zaw Moe Hitke",
     "avatar": "https://gravatar.com/avatar/3f78a86265a02ec50bde818853fc5105?d=mm&r=pg&s=200"
 }
 */
struct UserNameVO: Codable {
    let _id: String!
    let name: String!
    let avatar: String!
}
