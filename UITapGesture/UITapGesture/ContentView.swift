//
//  ContentView.swift
//  UITapGesture
//
//  Created by Le on 10/17/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("download")
            .gesture(TapGesture().onEnded({ (_) in
                print("Tap...tap")
            }))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
