//
//  ContentView.swift
//  UIText
//
//  Created by Le on 10/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello world!")
            .font(.largeTitle)
            .fontWeight(.light)
            .foregroundColor(Color.green)
            .padding()
        Text("Hello Le Ngoc!")
            .font(.largeTitle)
            .foregroundColor(Color.blue)
            .multilineTextAlignment(.center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
