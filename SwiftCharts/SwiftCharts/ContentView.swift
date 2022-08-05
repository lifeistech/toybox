//
//  ContentView.swift
//  SwiftCharts
//
//  Created by Masakaz Ozaki on 2022/07/26.
//

import Charts
import SwiftUI

struct ContentView: View {
    var chartData: [ToyShape]
    var body: some View {
        Chart {
            ForEach(chartData) { data in
                BarMark(x:.value("種類", data.type),
                        y: .value("合計", data.count)
                ).foregroundStyle(by: .value("Color", data.color))
            }
        }.chartForegroundStyleScale(["Green": .green,  "Pink": .pink, "Yellow": .yellow])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(chartData: [
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
