//
//  ContentView.swift
//  UIButton
//
//  Created by Le on 10/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showText = false
    var body: some View {
        VStack {
            Button(action: {
                self.showText.toggle()
            }, label: {
                Text("Show detail")
            })
            if showText  {
                Text("Nguyen Ngoc Le")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
