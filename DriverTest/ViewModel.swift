//
//  ViewModel.swift
//  DriverTest
//
//  Created by 住田雅隆 on 2022/07/20.
//

import RxCocoa

class ViewModel {
    
    let multiplyNumber: Driver<String>
    
    init(inputText: Driver<String>) {
        
        let multiplyModel = MultiplyModel()
        
        multiplyNumber = inputText.flatMapLatest { text in
            return multiplyModel.multiplyText(text)
                .asDriver(onErrorJustReturn: "0")
        }
    }
}

