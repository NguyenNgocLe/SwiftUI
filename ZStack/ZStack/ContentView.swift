//
//  ContentView.swift
//  ZStack
//
//  Created by Le on 10/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("3667880")
                .resizable()
                .frame(width: 400, height: 400, alignment: .center)
            Text("Hello world")
                .font(.largeTitle)
                .background(Color.black)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 120)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
