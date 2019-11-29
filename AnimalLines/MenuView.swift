//
//  MenuView.swift
//  Slines
//
//  Created by Eduardo Marquez on 10/4/19.
//  Copyright © 2019 Eduardo Marquez. All rights reserved.
//

import SwiftUI

enum PathDrawing: String, CaseIterable {
    case none = "Blank canvas"
    case swift = "Swift (Unwrap logo)"
    case swan = "Swan"
    case penguin = "Penguin"
    case whale = "Whale"
    case fox = "Fox"
    
    var path: UIBezierPath {
        switch self {
        case .none:
            return UIBezierPath()
        case .swift:
            return .unwrapLogo
        case .swan:
            return .swan
        case .penguin:
            return .penguin
        case .whale:
            return .whale
        case .fox:
            return .fox
        }
    }
}

struct MenuView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("All images were obtained online, and do not belong to me. They were created using UIBezierPaths. Feel free to try to replicate them, or create your own using the blank canvas. You can later print out the code you need to create them with Swift."),
                        footer: Text("Created by Eduardo Salinas, as part of the tutorial: Using UIBezierPaths in SwiftUI")) {
                    ForEach(PathDrawing.allCases, id: \.self) { drawing in
                        NavigationLink(destination: AnimalLinesView(example: drawing)) {
                            HStack {
                                ScaledBezier(bezierPath: drawing.path)
                                    .stroke(lineWidth: 1)
                                    .fill(Color.primary)
                                    .frame(width: 50, height: 50)
                                Text(drawing.rawValue)
                            }
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Animal Lines")
            
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
