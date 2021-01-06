//
//  UserViewController.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/1/21.
//

import Foundation
import RxSwift
import RxCocoa
import RealmSwift

class UsersViewModel: BaseViewModel {
    
    public var usersObs : PublishSubject<[UserVO]> = PublishSubject()

    override init() {}
    
    public func requestData() {
        apiService.getUsers()
            .subscribeOn(ConcurrentDispatchQueueScheduler.init(queue: DispatchQueue.global()))
            .subscribe(onNext: { (response) in
                self.isLoadingObs.accept(false)
                self.usersObs.onNext(response)
            }, onError: { (error) in
                self._errorObs.accept(error.localizedDescription)
            }).disposed(by: bag)
    }
}
