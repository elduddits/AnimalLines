//
//  ContentView.swift
//  Slines
//
//  Created by Eduardo Marquez on 10/2/19.
//  Copyright © 2019 Eduardo Marquez. All rights reserved.
//

import SwiftUI


struct AnimalLinesView: View {
    
    let example: PathDrawing
    
    @State private var drawing: [UIBezierPath] = []
    @State private var drawInstructions: [String] = []
    @State private var showingAlert = false
    
    @ObservedObject var startPoint: Point = Point(x: 0.1, y: 0.5)
    @ObservedObject var endPoint: Point = Point(x: 0.3, y: 0.5)
    @ObservedObject var controlPoint1: Point = Point(x: 0, y: 0)
    @ObservedObject var controlPoint2: Point = Point(x: 0, y: 0)
    
    let step: Double = 0.001
    let range: ClosedRange<Double> = 0...1
    
    var body: some View {
        var drawPaths = drawing
        drawPaths.append(drawCurrentPath())
        
        return
            VStack {
                ZStack {
                    ScaledBezier(bezierPath: example.path)
                        .stroke(lineWidth: 2)
                        .fill(Color.gray)
                        .frame(width: 400, height: 400)
                        .padding(2)
                        .border(Color.black)
                    
                    ScaledBezier(bezierPath: drawPaths.mergePaths())
                        .stroke(lineWidth: 2)
                        .frame(width: 400, height: 400)
                        .padding(2)
                        .border(Color.black)
                    }
                Text("Drag the sliders around to modify the shape of your current path segment. Start/end points control where the line will start and end. Control points change the slope, and angle of the curve.")
                    .font(.caption)
                    .layoutPriority(1)
                List {
                    // Origin should only be for first point. From then on, the next point
                    // will be on the end of the last point.
                    if drawing.isEmpty {
                        Section(header: Text("Start point")) {
                            PointSlider(name: "Start",
                                        range: range,
                                        step: step,
                                        point: startPoint)
                        }
                    }
                    Section(header: Text("End point")) {
                        PointSlider(name: "End",
                                    range: range,
                                    step: step,
                                    point: endPoint)
                    }
                    Section(header: Text("Control points")) {
                        PointSlider(name: "C1",
                                    range: range,
                                    step: step,
                                    point: controlPoint1)
                        
                        PointSlider(name: "C2",
                                    range: range,
                                    step: step,
                                    point: controlPoint2)
                    }
                    Button(action: {
                        if self.drawing.isEmpty {
                            self.saveCurrentDrawing(drawPaths)
                        }
                        self.showingAlert.toggle()
                    }) {
                        Text("Show drawing instructions")
                    }
                }
                .layoutPriority(0.5)
                .listStyle(GroupedListStyle())
            }
            .navigationBarTitle(Text(example.rawValue))
            .navigationBarItems(trailing:
                Button(action: {
                    self.saveCurrentDrawing(drawPaths)
                    self.reset()
                }) {
                    Text("Add line")
            })
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Path is..."),
                      message: Text(self.drawInstructions.joined()),
                      primaryButton: .default(Text("Copy to clipboard"), action: {
                        UIPasteboard.general.string = self.drawInstructions.joined()
                      }), secondaryButton: .default(Text("Ok"))
                )
        }
    }
    
    func reset() {
        startPoint.x = endPoint.x
        startPoint.y = endPoint.y
        endPoint.zeroOut()
        controlPoint1.zeroOut()
        controlPoint2.zeroOut()
    }
    
    // MARK: - Drawing methods
    func printCurrentPath() -> String {
        return """
        \(drawing.isEmpty ? """
        let path = UIBezierPath()
        path.move(to: CGPoint(x: \(startPoint.x), y: \(startPoint.y)))
        """ : "")
        path.addCurve(to: CGPoint(x: \(endPoint.x), y: \(endPoint.y)), \
        controlPoint1: CGPoint(x: \(controlPoint1.x), y: \(controlPoint1.y)), \
        controlPoint2: CGPoint(x: \(controlPoint2.x), y: \(controlPoint2.y)))
        """
    }
    
    func drawCurrentPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: startPoint.x, y: startPoint.y))
        let origin = CGPoint(x: endPoint.x, y: endPoint.y)
        let control1 = CGPoint(x: controlPoint1.x, y: controlPoint1.y)
        let control2 = CGPoint(x: controlPoint2.x, y: controlPoint2.y)
        path.addCurve(to: origin,
                      controlPoint1: control1,
                      controlPoint2: control2)
        return path
    }
    
    func saveCurrentDrawing(_ drawPaths: [UIBezierPath]) {
        if let path = drawPaths.last {
            self.drawInstructions.append(self.printCurrentPath())
            self.drawing.append(path)
        }
    }    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalLinesView(example: .whale)
    }
}
