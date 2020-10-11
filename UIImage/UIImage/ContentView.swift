//
//  ContentView.swift
//  UIImage
//
//  Created by Le on 10/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("a")
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
