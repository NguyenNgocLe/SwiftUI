//
//  Modal.swift
//  ShowDialog
//
//  Created by Le on 14/11/2020.
//

import UIKit
//MARK: - Protocol
protocol Modal {
    func show(animated: Bool)
    func dismiss()
    var backgroundView: UIView { get }
    var dialogView: UIView { get set }
}

//MARK: - Extension Modal
extension Modal where Self:UIView {
    func show(animated: Bool){
        
    }
    
    func dismiss() {
        self.removeFromSuperview()
    }
}
