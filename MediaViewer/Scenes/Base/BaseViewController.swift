//
//  BaseViewController.swift
//  MediaViewer
//
//  Created by TranTien on 12/09/2021.
//

import MBProgressHUD
import RxSwift
import RxCocoa
import UIKit

class BaseViewController: UIViewController {
    private var bag = DisposeBag()
    var isLoadingData = BehaviorRelay<Bool?>(value: nil)
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        bindEvent()
    }
    
    private func showProgress() {
        MBProgressHUD.showAdded(to: view, animated: true).letIt {
            $0.mode = .indeterminate
            $0.label.text = "Loading..."
        }
    }
    
    private func hideProgress() {
        MBProgressHUD.hide(for: view, animated: true)
    }
    
    private func bindEvent() {
        isLoadingData.bind { [weak self] isLoading in
            guard let self = self else { return }
            guard let isLoading = isLoading else { return }
            isLoading ? self.showProgress() : self.hideProgress()
        }.disposed(by: bag)
    }
}
