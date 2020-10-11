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
        Image("b")
            .resizable()
            .frame(width: 200, height: 200, alignment: .bottomLeading)
            .clipShape(Circle())
            .overlay(Circle()
                        .stroke(Color.blue))
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 1.0, y: 4.0)
        Image("b")
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
