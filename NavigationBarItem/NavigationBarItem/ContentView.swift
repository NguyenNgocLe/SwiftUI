//
//  ContentView.swift
//  NavigationBarItem
//
//  Created by Le on 10/21/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, world")
                .navigationBarTitle("SwiftUI",
                                    displayMode: .inline)
                .navigationBarItems(trailing:
                                        HStack {
                                            Button("Help") {
                                                print("Help")
                                            }
                                            Button("OK") {
                                                print("Help")
                                            }
                                        }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
