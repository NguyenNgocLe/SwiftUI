//
//  TabButton.swift
//  AnimationUI
//
//  Created by Le on 23/11/2020.
//

import SwiftUI

struct TabButton: View {
    var title: String
    @Binding var selected: String
    @Namespace var animation
    
    var body: some View {
        
        Button(action: {
            withAnimation(.spring()) {selected = title}
        }, label: {
            Text(title)
                .font(.system(size: 15))
                .fontWeight(.bold)
                .foregroundColor(selected == title ? .white : .black)
                .padding(.vertical,10)
                .padding(.horizontal, selected == title ? 20 : 0)
                .background(ZStack {
                    if selected == title {
                        Color.black
                            .clipShape(Capsule())
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                })
        })
    }
}
