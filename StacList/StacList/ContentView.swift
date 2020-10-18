//
//  ContentView.swift
//  StacList
//
//  Created by Le on 10/18/20.
//

import SwiftUI

struct StudentRow: View {
    var name: String
    
    var body: some View {
        Text("name: \(name)")
    }
    
    
}

struct ContentView: View {
    var body: some View {
        Form(content: {
            StudentRow(name: "SwiftUI")
            StudentRow(name: "Javascript")
            StudentRow(name: "Autolayout")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
