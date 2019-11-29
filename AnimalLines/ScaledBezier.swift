//
//  ScaledBezier.swift
//  Slines
//
//  Created by Eduardo Marquez on 10/2/19.
//  Copyright © 2019 Eduardo Marquez. All rights reserved.
//

import Foundation
import SwiftUI

struct MyBezierView: Shape {
    let bezierPath: UIBezierPath
    func path(in rect: CGRect) -> Path {
        Path(bezierPath.cgPath)
    }
}

// Taken from Paul Hudson's site
// https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-uibezierpath-and-cgpath-in-swiftui
struct ScaledBezier: Shape {
    let bezierPath: UIBezierPath
    func path(in rect: CGRect) -> Path {
        let path = Path(bezierPath.cgPath)
        // Figure out how much bigger we need to make our path in order for it to fill the available space without clipping.
        let multiplier = min(rect.width, rect.height)
        // Create an affine transform that uses the multiplier for both dimensions equally.
        let transform = CGAffineTransform(scaleX: multiplier, y:
            multiplier)
        // Apply that scale and send back the result.
        return path.applying(transform)
    }
}

extension Array where Element == UIBezierPath {
    func mergePaths() -> UIBezierPath {
        let allPaths = UIBezierPath()
        self.forEach({ allPaths.append($0) })
        return allPaths
    }
}

