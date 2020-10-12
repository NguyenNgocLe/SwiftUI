//
//  ContentView.swift
//  ZStack
//
//  Created by Le on 10/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                Image("3667880")
                Text("Hacking with Swift")
                    .font(.largeTitle)
                    .background(Color.black)
                    .foregroundColor(.white)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
