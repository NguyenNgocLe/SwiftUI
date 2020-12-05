//
//  Home.swift
//  AnimationUI
//
//  Created by Le on 23/11/2020.
//

import SwiftUI

struct Home: View {
    @State var selected = tabs[0]
    @Namespace var animation
    @State var selectedItem : Item = items[0]
    var body: some View {
        VStack {
            HStack {
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.system(size: 25, weight: .heavy))
                        .foregroundColor(.black)
                }
                Spacer(minLength: 0)
                Button(action: {
                    
                }) {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 45, height: 45)
                        .cornerRadius(15.0)
                }
                
            }
            .padding(.vertical, 10)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Let's")
                                .font(.title)
                                .foregroundColor(.black)
                            Text("Get Stated")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal)
                        Spacer(minLength: 0)
                    }
                }
                HStack(spacing: 0) {
                    ForEach(tabs, id:\.self) {tab in
                        
                        // Tab Button....
                        
                        TabButton(title: tab, selected: $selected, animation: _animation).padding(7)
                        
                        // even spacing....
                        if tabs.last != tab{Spacer(minLength: 0)}
                    }
                }
                .padding()
                .padding(.top, 5)
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 20), count: 2), spacing: 25) {
                    ForEach(items) { item in
                        
                    }
                }
            }
            Spacer(minLength: 0)
        }
    }
}
// Tabs...

var tabs = ["Glasses","Watched","Shoes","Perfume"]

