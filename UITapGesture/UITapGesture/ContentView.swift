//
//  ContentView.swift
//  UITapGesture
//
//  Created by Le on 10/17/20.
//

import SwiftUI

struct ContentView: View {
    //Create Closure
    let longPressGesture: LongPressGesture = {
        var longPress = LongPressGesture()
        longPress.minimumDuration = 2
        return longPress
    }()
    
    var body: some View {
        Image("download")
            .gesture(longPressGesture
                        .onChanged({ (isPress) in
                            print("Changed: \(isPress)")
                        })
                        .onEnded({ (isEnd) in
                            print("End: \(isEnd)")
                        }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
