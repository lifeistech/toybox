//
//  ContentCell.swift
//  UIHostingConfiguration
//
//  Created by Masakaz Ozaki on 2022/07/26.
//

import SwiftUI

struct ContentCell: View {
    var title: String
    @State var isStared = false
    var body: some View {
        HStack {
            Text(title)
                .font(.title2)
            Spacer()
            if isStared {
                Button() {
                    isStared = false
                    print("unstared")
                } label: {
                    Image(systemName: "star.fill")
                        .font(.title2)
                }
            } else {
                Button() {
                    isStared = true
                    print("stared")
                } label: {
                    Image(systemName: "star")
                        .font(.title2)
                }
            }
        }.frame(minHeight: 44)
    }
}

struct ContentCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentCell(title: "TITLE SAMPLE")
    }
}
