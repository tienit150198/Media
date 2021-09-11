//
//  Array+Extensions.swift
//  MediaViewer
//
//  Created by TranTien on 12/09/2021.
//

import Foundation

extension Array {
    func at(_ index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
