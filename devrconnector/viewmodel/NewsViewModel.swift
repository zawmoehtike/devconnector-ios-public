//
//  HomeViewModel.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 12/28/20.
//

import Foundation
import RxSwift
import RxCocoa
import RealmSwift

class NewsViewModel: BaseViewModel {
    
    public var newsObs : PublishSubject<[NewVO]> = PublishSubject()

    override init() {}
    
    public func requestData() {
        apiService.getNews()
            .subscribeOn(ConcurrentDispatchQueueScheduler.init(queue: DispatchQueue.global()))
            .subscribe(onNext: { (response) in
                self.isLoadingObs.accept(false)
                self.newsObs.onNext(response)
            }, onError: { (error) in
                self._errorObs.accept(error.localizedDescription)
            }).disposed(by: bag)
    }
}
