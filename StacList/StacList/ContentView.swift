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
                .foregroundColor(Color.red)
                .padding(5)
            StudentRow(name: "Javascript")
                .foregroundColor(Color.green)
                .padding(5)
            StudentRow(name: "Autolayout")
                .foregroundColor(Color.blue)
                .padding(5)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
