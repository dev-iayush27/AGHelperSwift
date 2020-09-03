//
//  AGCardView.swift
//  AGHelperSwift
//
//  Created by Ayush Gupta on 03/09/20.
//

import Foundation
import UIKit

@IBDesignable
open class AGCardView: UIView {
    @IBInspectable var cornerRadius: CGFloat = 5
    @IBInspectable var widthShadowOffset: Int = 3
    @IBInspectable var heightShadowOffset: Int = 3
    @IBInspectable var shadowNewColor: UIColor? = UIColor.black
    @IBInspectable var shadowOpacity: Float = 0.3

    open override func layoutSubviews() {
        super.layoutSubviews()
        
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.masksToBounds = false
        layer.shadowColor = shadowNewColor?.cgColor
        layer.shadowOffset = CGSize(width: widthShadowOffset, height: heightShadowOffset)
        layer.shadowOpacity = shadowOpacity
        layer.shadowPath = shadowPath.cgPath
    }
}
