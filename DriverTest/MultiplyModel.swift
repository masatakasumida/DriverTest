//
//  MultiplyModel.swift
//  DriverTest
//
//  Created by 住田雅隆 on 2022/07/20.
//

import RxSwift

class MultiplyModel {
    func multiplyText(_ text: String) -> Observable<String> {
        return .just("\((Int(text) ?? 0) * 5)")
    }
}

