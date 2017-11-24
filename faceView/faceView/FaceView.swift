//
//  FaceView.swift
//  faceView
//
//  Created by africanprince.org on 11/23/17.
//  Copyright © 2017 AfricanPrince. All rights reserved.
//

import UIKit

class FaceView: UIView {
    
    var scale: CGFloat = 0.9
    
    private var skullRadius: CGFloat      {
        return min(bounds.size.width, bounds.size.height) / 2 * scale
    }
    
    private var skullCenter: CGPoint    {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private func pathForSkull() -> UIBezierPath {
        let path = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: false)
        path.lineWidth = 5.0
        return path
    }
    
    
    override func draw(_ rect: CGRect) {
        // Drawing code
    
        
        UIColor.blue.set()
        pathForSkull().stroke()
    }
    
    
}
