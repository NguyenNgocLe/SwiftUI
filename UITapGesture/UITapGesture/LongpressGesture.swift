//
//  LongpressGesture.swift
//  UITapGesture
//
//  Created by Le on 10/17/20.
//

import SwiftUI

struct LongpressGesture: View {
    var body: some View {
        Image("download")
            .onLongPressGesture(minimumDuration: 2,pressing: { (isPress) in
                print("Press \(isPress)")
            }, perform: {
                print("Long press")
            })
    }
}

struct LongpressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongpressGesture()
    }
}
