//
//  iApiClient.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/2/21.
//

import Foundation
import RxSwift

protocol iApiClient {
    func loginUser(email: String, password: String) -> Observable<LoginResponse>
    func registerUser(name: String, email: String, password: String) -> Observable<RegisterResponse>
    func getUsers() -> Observable<[UserVO]>
    func getNews() -> Observable<[NewVO]>
}
