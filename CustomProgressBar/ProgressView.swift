//
//  ProgressView.swift
//  CustomProgressBar
//
//  Created by Deepak Kadarivel on 29/01/16.
//  Copyright © 2016 upbeatios. All rights reserved.
//

import UIKit

class ProgressView: UIView {

    private let progressLayer: CAShapeLayer = CAShapeLayer()
    private let progressLabel: UILabel
    
    required init?(coder aDecoder: NSCoder) {
        progressLabel = UILabel()
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        progressLabel = UILabel()
        super.init(frame: frame)
    }

    private func gradientMask() -> CAGradientLayer {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = bounds
        gradientLayer.locations = [0.0,1.0]
        
        let colorTop: AnyObject = UIColor(red: 255.0/255.0, green: 213/255.0, blue: 63.0/255.0, alpha: 1).CGColor
        let ColorBottom: AnyObject = UIColor(red: 255.0/255.0, green: 198.0/255.0, blue: 5.0/255.0, alpha: 1).CGColor
        let arrayOfColors: [AnyObject] = [colorTop, ColorBottom]
        gradientLayer.colors = arrayOfColors
        
        return gradientLayer
    }
}
