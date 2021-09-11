//
//  UIViewController+Extensions.swift
//  MediaViewer
//
//  Created by TranTien on 12/09/2021.
//

import UIKit

extension UIViewController {
    func dismissSelf(completion: (() -> Void)? = nil) {
        dismiss(animated: true, completion: completion)
    }
    
    func dismissRoot(completion: (() -> Void)? = nil) {
        if let p = presentingViewController {
            p.dismissRoot(completion: completion)
        } else {
            dismiss(animated: true, completion: completion)
        }
    }
    
    func pop() {
        _ = navigationController?.popViewController(animated: true)
    }
    
    func pushViewController(viewController: UIViewController, animated: Bool) {
        navigationController?.pushViewController(viewController, animated: animated)
    }
    
    func present(viewController: UIViewController, animated: Bool = true, completion: (() -> Void)? = nil) {
        navigationController?.present(viewController, animated: true, completion: completion)
    }
}

