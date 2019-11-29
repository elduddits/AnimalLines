//
//  PreloadedPaths.swift
//  Slines
//
//  Created by Eduardo Marquez on 10/3/19.
//  Copyright © 2019 Eduardo Marquez. All rights reserved.
//

import Foundation
import SwiftUI

extension UIBezierPath {
    
    // Taken from Paul Hudson's site
    // https://www.hackingwithswift.com/quick-start/swiftui/how-to-use-uibezierpath-and-cgpath-in-swiftui
    static var unwrapLogo: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.534, y: 0.5816))
        path.addCurve(to: CGPoint(x: 0.1877, y: 0.088),
                      controlPoint1: CGPoint(x: 0.534, y: 0.5816),
                      controlPoint2: CGPoint(x: 0.2529, y: 0.4205))
        path.addCurve(to: CGPoint(x: 0.9728, y: 0.8259),
                      controlPoint1: CGPoint(x: 0.4922, y: 0.4949),
                      controlPoint2: CGPoint(x: 1.0968, y: 0.4148))
        path.addCurve(to: CGPoint(x: 0.0397, y: 0.5431),
                      controlPoint1: CGPoint(x: 0.7118, y: 0.5248),
                      controlPoint2: CGPoint(x: 0.3329, y: 0.7442))
        path.addCurve(to: CGPoint(x: 0.6211, y: 0.0279),
                      controlPoint1: CGPoint(x: 0.508, y: 1.1956),
                      controlPoint2: CGPoint(x: 1.3042, y: 0.5345))
        path.addCurve(to: CGPoint(x: 0.6904, y: 0.3615),
                      controlPoint1: CGPoint(x: 0.7282, y: 0.2481),
                      controlPoint2: CGPoint(x: 0.6904, y: 0.3615))
        return path
    }
    
    static var penguin: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.185, y: 0.949))
        path.addCurve(to: CGPoint(x: 0.2999, y: 0.96499),
                      controlPoint1: CGPoint(x: 0.219, y: 0.8399),
                      controlPoint2: CGPoint(x: 0.266, y: 1))
        path.addCurve(to: CGPoint(x: 0.14999, y: 0.204),
                      controlPoint1: CGPoint(x: 0.069, y: 0.236),
                      controlPoint2: CGPoint(x: 0.4799, y: 0.29399))
        path.addCurve(to: CGPoint(x: 0.267, y: 0.14799),
                      controlPoint1: CGPoint(x: 0.539, y: 0.1799),
                      controlPoint2: CGPoint(x: 0.166, y: 0.30599))
        path.addCurve(to: CGPoint(x: 0.57799, y: 0.93),
                      controlPoint1: CGPoint(x: 0.5809, y: 0),
                      controlPoint2: CGPoint(x: 0.622, y: 0.57699))
        path.addCurve(to: CGPoint(x: 0.412, y: 0.45),
                      controlPoint1: CGPoint(x: 0.538, y: 1),
                      controlPoint2: CGPoint(x: 0.43099, y: 0.653))
        path.addCurve(to: CGPoint(x: 0.308, y: 0.454),
                      controlPoint1: CGPoint(x: 0.388, y: 0.381),
                      controlPoint2: CGPoint(x: 0.29899, y: 0.72199))
        path.addCurve(to: CGPoint(x: 0.461, y: 0.405),
                      controlPoint1: CGPoint(x: 0.339, y: 0.238),
                      controlPoint2: CGPoint(x: 0.463, y: 0.35299))
        return path
    }
    
    static var swan: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.127, y: 0.521))
        path.addCurve(to: CGPoint(x: 0.581, y: 0.556),
                      controlPoint1: CGPoint(x: 0.1489, y: 0.428),
                      controlPoint2: CGPoint(x: 0.212, y: 0.176))
        path.addCurve(to: CGPoint(x: 0.556, y: 0.083),
                      controlPoint1: CGPoint(x: 0.83, y: 0.809),
                      controlPoint2: CGPoint(x: 0.464, y: 0.41999))
        path.addCurve(to: CGPoint(x: 0.796, y: 0.08899),
                      controlPoint1: CGPoint(x: 0.58299, y: 0),
                      controlPoint2: CGPoint(x: 0.768, y: 0))
        path.addCurve(to: CGPoint(x: 0.774, y: 0.117),
                      controlPoint1: CGPoint(x: 0.8639, y: 0.2089),
                      controlPoint2: CGPoint(x: 0.9909, y: 0.101))
        path.addCurve(to: CGPoint(x: 0.76, y: 0.529),
                      controlPoint1: CGPoint(x: 0.5949, y: 0.134),
                      controlPoint2: CGPoint(x: 0.529, y: 0.203))
        path.addCurve(to: CGPoint(x: 0.7439, y: 0.828),
                      controlPoint1: CGPoint(x: 0.761, y: 0.531),
                      controlPoint2: CGPoint(x: 0.927, y: 0.758))
        path.addCurve(to: CGPoint(x: 0.434, y: 0.6039),
                      controlPoint1: CGPoint(x: 0.634, y: 0.8499),
                      controlPoint2: CGPoint(x: 0.752, y: 0.72699))
        path.addCurve(to: CGPoint(x: 0.60699, y: 0.819),
                      controlPoint1: CGPoint(x: 0.285, y: 0.55),
                      controlPoint2: CGPoint(x: 0.064, y: 0.84899))
        path.addCurve(to: CGPoint(x: 0.168, y: 0.758),
                      controlPoint1: CGPoint(x: 0.834, y: 0.766),
                      controlPoint2: CGPoint(x: 0.256, y: 0.29099))
        return path
    }
    
    static var whale: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.015, y: 0.363))
        path.addCurve(to: CGPoint(x: 0.298, y: 0.334),
                      controlPoint1: CGPoint(x: 0.125, y: 0.301),
                      controlPoint2: CGPoint(x: 0.195, y: 0.386))
        path.addCurve(to: CGPoint(x: 0.623, y: 0.439),
                      controlPoint1: CGPoint(x: 0.422, y: 0.303),
                      controlPoint2: CGPoint(x: 0.576, y: 0.491))
        path.addCurve(to: CGPoint(x: 0.954, y: 0.398),
                      controlPoint1: CGPoint(x: 0.664, y: 0.427),
                      controlPoint2: CGPoint(x: 0.667, y: 0.537))
        path.addCurve(to: CGPoint(x: 0.938, y: 0.456),
                      controlPoint1: CGPoint(x: 1.0, y: 0.383),
                      controlPoint2: CGPoint(x: 0.937, y: 0.468))
        path.addCurve(to: CGPoint(x: 0.958, y: 0.461),
                      controlPoint1: CGPoint(x: 0.883, y: 0.531),
                      controlPoint2: CGPoint(x: 0.841, y: 0.43))
        path.addCurve(to: CGPoint(x: 1.0, y: 0.504),
                      controlPoint1: CGPoint(x: 0.976, y: 0.471),
                      controlPoint2: CGPoint(x: 1.0, y: 0.489))
        path.addCurve(to: CGPoint(x: 0.636, y: 0.598),
                      controlPoint1: CGPoint(x: 0.791, y: 0.608),
                      controlPoint2: CGPoint(x: 0.903, y: 0.347))
        path.addCurve(to: CGPoint(x: 0.027, y: 0.421),
                      controlPoint1: CGPoint(x: 0.458, y: 0.704),
                      controlPoint2: CGPoint(x: 0.18, y: 0.615))
        path.addCurve(to: CGPoint(x: 0.162, y: 0.391),
                      controlPoint1: CGPoint(x: 0.0, y: 0.376),
                      controlPoint2: CGPoint(x: 0.008, y: 0.339))
        path.addCurve(to: CGPoint(x: 0.265, y: 0.475),
                      controlPoint1: CGPoint(x: 0.245, y: 0.406),
                      controlPoint2: CGPoint(x: 0.176, y: 0.438))
        path.addCurve(to: CGPoint(x: 0.264, y: 0.488),
                      controlPoint1: CGPoint(x: 0.368, y: 0.497),
                      controlPoint2: CGPoint(x: 0.299, y: 0.4160))
        path.addCurve(to: CGPoint(x: 0.58, y: 0.678),
                      controlPoint1: CGPoint(x: 0.243, y: 0.552),
                      controlPoint2: CGPoint(x: 0.532, y: 0.522))
        path.addCurve(to: CGPoint(x: 0.547, y: 0.5690),
                      controlPoint1: CGPoint(x: 0.595, y: 0.757),
                      controlPoint2: CGPoint(x: 0.388, y: 0.631))
        path.addCurve(to: CGPoint(x: 0.7, y: 0.516),
                      controlPoint1: CGPoint(x: 0.625, y: 0.551),
                      controlPoint2: CGPoint(x: 0.627, y: 0.582))
        return path
    }
    
    static var fox: UIBezierPath {
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.294, y: 0.417))
        path.addCurve(to: CGPoint(x: 0.0, y: 0.672),
                      controlPoint1: CGPoint(x: 0.13, y: 0.319),
                      controlPoint2: CGPoint(x: 0.055, y: 0.469))
        path.addCurve(to: CGPoint(x: 0.297, y: 0.417),
                      controlPoint1: CGPoint(x: 0.267, y: 0.637),
                      controlPoint2: CGPoint(x: 0.136, y: 0.42))
        path.addCurve(to: CGPoint(x: 0.234, y: 0.8190),
                      controlPoint1: CGPoint(x: 0.418, y: 0.732),
                      controlPoint2: CGPoint(x: 0.238, y: 0.679))
        path.addCurve(to: CGPoint(x: 0.227, y: 0.801),
                      controlPoint1: CGPoint(x: 0.235, y: 0.887),
                      controlPoint2: CGPoint(x: 0.505, y: 0.925))
        path.addCurve(to: CGPoint(x: 0.221, y: 0.59),
                      controlPoint1: CGPoint(x: 0.182, y: 0.762),
                      controlPoint2: CGPoint(x: 0.271, y: 0.696))
        path.addCurve(to: CGPoint(x: 0.292, y: 0.415),
                      controlPoint1: CGPoint(x: 0.233, y: 0.617),
                      controlPoint2: CGPoint(x: 0.146, y: 0.447))
        path.addCurve(to: CGPoint(x: 0.601, y: 0.713),
                      controlPoint1: CGPoint(x: 0.481, y: 0.446),
                      controlPoint2: CGPoint(x: 0.365, y: 0.551))
        path.addCurve(to: CGPoint(x: 0.845, y: 0.859),
                      controlPoint1: CGPoint(x: 1.0, y: 1.0),
                      controlPoint2: CGPoint(x: 1.0, y: 0.779))
        path.addCurve(to: CGPoint(x: 0.747, y: 0.526),
                      controlPoint1: CGPoint(x: 0.367, y: 0.769),
                      controlPoint2: CGPoint(x: 0.714, y: 0.589))
        path.addCurve(to: CGPoint(x: 0.78, y: 0.569),
                      controlPoint1: CGPoint(x: 0.774, y: 0.716),
                      controlPoint2: CGPoint(x: 0.682, y: 0.576))
        path.addCurve(to: CGPoint(x: 0.92, y: 0.665),
                      controlPoint1: CGPoint(x: 0.849, y: 0.587),
                      controlPoint2: CGPoint(x: 0.814, y: 0.634))
        path.addCurve(to: CGPoint(x: 0.667, y: 0.804),
                      controlPoint1: CGPoint(x: 0.882, y: 0.761),
                      controlPoint2: CGPoint(x: 0.767, y: 0.661))
        path.addCurve(to: CGPoint(x: 0.293, y: 0.4150),
                      controlPoint1: CGPoint(x: 0.594, y: 0.871),
                      controlPoint2: CGPoint(x: 0.355, y: 0.793))
        return path
    }
}
