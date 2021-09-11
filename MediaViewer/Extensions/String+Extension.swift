//
//  String+Extension.swift
//  MediaViewer
//
//  Created by TranTien on 12/09/2021.
//
import Foundation
import UIKit

extension String {
    static func isNullOrEmpty(_ value: String?) -> Bool {
        guard let value = value else { return true }
        return value.isEmpty
    }
    
    
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
}

extension String {
    func toUIImage() -> UIImage? {
        return UIImage(named: self)
    }
    func toUIFont(size: CGFloat) -> UIFont? {
        return UIFont(name: self, size: size)
    }
}
