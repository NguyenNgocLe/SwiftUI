//
//  ContentView.swift
//  UIState
//
//  Created by Le on 10/11/20.
//

import SwiftUI

struct ContentView: View {
    //MARK: - State
    @State private var name = "Hello"
    
    var body: some View {
        VStack {
            Text(name)
                .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.leading)
            Button(action: {
                self.name = "Le Ngoc"
            }, label: {
                Text("Button click")
                    .font(.largeTitle)
                    .padding()
                    .overlay(
                        //                        RoundedRectangle(cornerRadius: 20)
                        //                            .stroke(Color.purple, lineWidth: 5)
                        Capsule(style: .continuous)
                            .stroke(Color.purple, style: StrokeStyle(lineWidth: 2, dash: [5], dashPhase: 2))
                    )
            })
        }
        
        HStack {
            Button("s") {
                self.name = "Minh Tan"
            }
        }
    }
    
    var bottom: some View {
        Text("Nguyen Ngoc Le")
            .bold()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
