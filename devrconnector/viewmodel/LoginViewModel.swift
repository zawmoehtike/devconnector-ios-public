//
//  LoginViewModel.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 12/28/20.
//

import Foundation
import RxCocoa
import RxSwift

class LoginViewModel: BaseViewModel {
    
    public var dataObs : PublishSubject<LoginResponse> = PublishSubject()
    
    override init() {}
    
    func loginUser(email: String, password: String) {
        apiService.loginUser(email: email, password: password)
            .subscribeOn(ConcurrentDispatchQueueScheduler.init(queue: DispatchQueue.global()))
            .subscribe(onNext: { (response) in
                self.isLoadingObs.accept(false)
                self.dataObs.onNext(response)
            }, onError: {
                error in
                self._errorObs.accept(error.localizedDescription)
            },onCompleted: {
                self.dataObs.onCompleted()
            }).disposed(by: bag)
    }
}
