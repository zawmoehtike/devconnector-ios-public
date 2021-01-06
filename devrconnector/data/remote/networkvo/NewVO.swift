//
//  NewVO.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/1/21.
//

import Foundation


/*
 {
         "_id": "5fc20678e11c671e8433454f",
         "text": "Lorem ipsm ggwp",
         "name": "Zaw Moe Hitke",
         "avatar": "https://gravatar.com/avatar/3f78a86265a02ec50bde818853fc5105?d=mm&r=pg&s=200",
         "user": "5fc1ef9fe11c671e8433454c",
         "likes": [
             {
                 "_id": "5fc32960f9c6133790749ac1",
                 "user": "5fc32935f9c6133790749ac0"
             }
         ],
         "comments": [
             {
                 "_id": "5fc32976f9c6133790749ac2",
                 "text": "Lorem ipsm ggwp comment 2",
                 "name": "Zin Ye Htike",
                 "avatar": "https://gravatar.com/avatar/f754f79e1b7a335a4605b1c764adf6a6?d=mm&r=pg&s=200",
                 "user": "5fc32935f9c6133790749ac0",
                 "date": "2020-11-29T04:54:14.351Z"
             },
             {
                 "_id": "5fc31caef9c6133790749abf",
                 "text": "Lorem ipsm ggwp comment",
                 "name": "Zaw Moe Hitke",
                 "avatar": "https://gravatar.com/avatar/3f78a86265a02ec50bde818853fc5105?d=mm&r=pg&s=200",
                 "user": "5fc1ef9fe11c671e8433454c",
                 "date": "2020-11-29T03:59:42.117Z"
             }
         ],
         "date": "2020-11-28T08:12:40.586Z",
         "__v": 5
     }
 */
struct NewVO: Codable {
    let name: String!
    let text: String!
    let date: String!
}
