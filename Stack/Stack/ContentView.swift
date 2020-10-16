//
//  ContentView.swift
//  Stack
//
//  Created by Le on 10/16/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("swiftui")
                .onTapGesture(count: 2, perform: {
                    print("tap...tap")
                })
        }
    }
}

struct ImageView: View {
    var body: some View {
        VStack {
            Image("swiftui")
                .onTapGesture(count: 2, perform: {
                    print("tap...tap")
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
