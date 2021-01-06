//
//  SharedApiClient.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/2/21.
//

import Foundation
import Alamofire
import RxSwift

class SharedApiClient: BaseApiClient {
    static var shared = SharedApiClient()
    var token: String = ""
    
    private override init() {
        if (UserDefaults.standard.value(forKey: "token") != nil) {
            token = UserDefaults.standard.value(forKey: "token") as! String
        }
    }
}

extension SharedApiClient : iApiClient {
    func loginUser(email: String, password: String) -> Observable<LoginResponse> {
        let parameters: Parameters = [
            "email": email,
            "password": password
        ]
        
        return requestApiWithoutHeaderWithJSONEncoding(url: ROUTES.LOGIN, method: .post, params: parameters, value: LoginResponse.self)
    }
    
    func registerUser(name: String, email: String, password: String) -> Observable<RegisterResponse> {
        let parameters: Parameters = ["name": name, "email": email, "password": password]
        
        return requestApiWithoutHeaderWithJSONEncoding(url: ROUTES.REGISTER, method: .post, params: parameters, value: RegisterResponse.self)
    }
    
    func getUsers() -> Observable<[UserVO]> {
        return requestApiWithoutHeader(url: ROUTES.GET_USERS, method: .get, params: [:], value: [UserVO].self)
    }
    
    func getNews() -> Observable<[NewVO]> {
        let headers: HTTPHeaders = [
            "x-auth-token": token
        ]
        
        return requestApiWithHeader(url: ROUTES.GET_NEWS, method: .get, params: [:], headrs: headers, value: [NewVO].self)
    }
}
