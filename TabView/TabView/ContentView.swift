//
//  ContentView.swift
//  TabView
//
//  Created by Le on 10/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView(selection: .constant(1),
                content:  {
                    Text("Tab Content 1").tabItem { Text("Tab Label 1") }.tag(1)
                    Text("Tab Content 2").tabItem { Text("Tab Label 2") }.tag(2)
                    Text("Tab Content 3").tabItem { Text("Tab Label 3") }.tag(3)
                    Text("Tab Content 4").tabItem { Text("Tab Label 4") }.tag(4)
                    Text("Tab Content 5").tabItem { Text("Tab Label 5") }.tag(5)
                    Text("Tab Content 6").tabItem { Text("Tab Label 6") }.tag(6)
                })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
