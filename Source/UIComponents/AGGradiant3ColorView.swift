//
//  AGGradiant3ColorView.swift
//  AGHelperSwift
//
//  Created by Ayush Gupta on 03/09/20.
//

import Foundation
import UIKit

@IBDesignable
open class AGGradiant3ColorView: UIView {
    open override class var layerClass: AnyClass { return CAGradientLayer.self }
    
    private var gradientLayer: CAGradientLayer { return layer as! CAGradientLayer }
    
    @IBInspectable var isVertical: Bool = true { didSet { updateStartEndPoint() } }
    @IBInspectable var color1: UIColor = .white { didSet { updateColors() } }
    @IBInspectable var color2: UIColor = .blue { didSet { updateColors() } }
    @IBInspectable var color3: UIColor = .red { didSet { updateColors() } }
    
    override public init(frame: CGRect = .zero) {
        super.init(frame: frame)
        configureGradient()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureGradient()
    }
    
    private func configureGradient() {
        updateStartEndPoint()
        updateColors()
    }
    
    private func updateStartEndPoint() {
        if isVertical {
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        } else {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
            gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        }
    }
    
    private func updateColors() {
        gradientLayer.colors = [color1.cgColor, color2.cgColor, color3.cgColor]
    }
}
