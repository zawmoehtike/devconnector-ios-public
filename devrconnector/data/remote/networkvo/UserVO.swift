//
//  UserVO.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/1/21.
//

import Foundation

/*
{
        "social": {
            "youtube": null,
            "twitter": "https://twitter.com/zawmoehtike",
            "instagram": null,
            "linkedin": null,
            "facebook": null
        },
        "skills": [
            " Android Development",
            " Full Stack Development"
        ],
        "_id": "5fc2047ae11c671e8433454d",
        "user": {
            "_id": "5fc1ef9fe11c671e8433454c",
            "name": "Zaw Moe Hitke",
            "avatar": "https://gravatar.com/avatar/3f78a86265a02ec50bde818853fc5105?d=mm&r=pg&s=200"
        },
        "__v": 0,
        "date": "2020-11-28T08:04:10.414Z",
        "education": [],
        "experience": [],
        "status": "Senior Developer",
        "website": "https://zawmoehtike.github.io",
        "bio": "Zaw is just a guy who trying to survive from ego",
        "company": "QSS",
        "githubusername": "",
        "location": "Yangon, Myanmar"
    }
*/
struct UserVO: Codable {
    let user: UserNameVO!
    let status: String!
}
