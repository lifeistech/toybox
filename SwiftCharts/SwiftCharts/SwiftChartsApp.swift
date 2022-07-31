//
//  SwiftChartsApp.swift
//  SwiftCharts
//
//  Created by Masakaz Ozaki on 2022/07/26.
//

import SwiftUI

@main
struct SwiftChartsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(chartData:[
                .init(color: "Green", type: "Cube", count: 2),
                .init(color: "Pink", type: "Cube", count: 1),
                .init(color: "Yellow", type: "Cube", count: 1),
                .init(color: "Green", type: "Sphere", count: 5),
                .init(color: "Pink", type: "Sphere", count: 2),
                .init(color: "Yellow", type: "Sphere", count: 1),
                .init(color: "Green", type: "Pyramid", count: 5),
                .init(color: "Pink", type: "Pyramid", count: 6),
                .init(color: "Yellow", type: "Pyramid", count: 2)])
        }
    }
}
