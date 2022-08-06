//
//  ContentCell.swift
//  UIHostingConfiguration
//
//  Created by Masakaz Ozaki on 2022/07/26.
//

import SwiftUI

struct ContentCell: View {
    var title: String
    var subTitle: String
    var bodyText: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.title)
                .bold()
            HStack {
                Text(subTitle)
                    .font(.title3)
                Text(Date().formatted())
                    .font(.footnote)
                    .foregroundColor(.gray)
                Spacer()
            }
            Text(bodyText)
        }.padding()
    }
}

struct ContentCell_Previews: PreviewProvider {
    static var previews: some View {
        ContentCell(title: "TITLE", subTitle: "SUBTITLE", bodyText: "Lorem ipsum dolor sit amet,")
    }
}
