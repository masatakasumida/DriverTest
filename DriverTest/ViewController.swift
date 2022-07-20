//
//  ViewController.swift
//  DriverTest
//
//  Created by 住田雅隆 on 2022/07/20.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet private weak var inputTextField: UITextField!
    @IBOutlet private weak var counterLabel: UILabel!
    
    private let disposeBag = DisposeBag()
    private var viewModel: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }
    
    func setupViewModel() {
        viewModel = ViewModel(inputText:
                                inputTextField.rx.text.orEmpty.asDriver())
        viewModel.multiplyNumber.drive(onNext:
                                        { result in
            self.counterLabel.text = result
        })
        .disposed(by: disposeBag)
    }
}


