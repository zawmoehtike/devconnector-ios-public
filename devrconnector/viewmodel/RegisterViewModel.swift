//
//  RegisterViewModel.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 12/28/20.
//

import Foundation
import RxCocoa
import RxSwift

class RegisterViewModel: BaseViewModel {
    
    public var dataObs : PublishSubject<RegisterResponse> = PublishSubject()
    
    override init() {}
    
    func requestUser(name: String, email: String, password: String) {
        apiService.registerUser(name: name, email: email, password: password)
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
