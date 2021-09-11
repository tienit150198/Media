//
//  MainViewController.swift
//  MediaViewer
//
//  Created by TranTien on 12/09/2021.
//

import UIKit

class MainViewController: BaseViewController {
    @IBAction private func tapGetMedia(_ sender: Any) {
        let homeVC = HomeViewController().apply {
            $0.modalPresentationStyle = .fullScreen
        }
        present(viewController: homeVC)
    }
    
}
