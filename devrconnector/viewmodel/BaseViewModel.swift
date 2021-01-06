//
//  BaseViewModel.swift
//  devrconnector
//
//  Created by Zaw Moe Htike on 1/2/21.
//

import Foundation
import RxSwift
import RxCocoa

class BaseViewModel {
    public var isLoadingObs : BehaviorRelay<Bool> = BehaviorRelay(value: false)
    public var _errorObs : BehaviorRelay<String?> = BehaviorRelay(value: nil)
    let apiService = SharedApiClient.shared
    let bag = DisposeBag()
}
