//
//  PointSlider.swift
//  Slines
//
//  Created by Eduardo Marquez on 10/3/19.
//  Copyright © 2019 Eduardo Marquez. All rights reserved.
//

import Foundation
import SwiftUI

struct PointSlider: View {
    
    static let pointFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 3
        return formatter
    }()
    
    let name: String
    let range: ClosedRange<Double>
    let step: Double
    
    @ObservedObject var point: Point
    
    var body: some View {
        Group {
            Slider(value: $point.x, in: range, step: step)
            Text("\(name) X value is: \(NSNumber(value: point.x), formatter: Self.pointFormatter)")
            Slider(value: $point.y, in: range, step: step)
            Text("\(name) Y value is: \(NSNumber(value: point.y), formatter: Self.pointFormatter)")
        }
    }
}
