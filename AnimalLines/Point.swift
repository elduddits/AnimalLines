//
//  Point.swift
//  Slines
//
//  Created by Eduardo Marquez on 10/3/19.
//  Copyright © 2019 Eduardo Marquez. All rights reserved.
//

import Foundation

class Point: ObservableObject {
    @Published var x: Double
    @Published var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    
    func zeroOut() {
        x = 0
        y = 0
    }
}
