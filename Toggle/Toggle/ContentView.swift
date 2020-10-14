//
//  ContentView.swift
//  Toggle
//
//  Created by Le on 10/14/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                Text("Show toggle")
            }.padding()
            if isOn {
                Text("Toggle is on")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
