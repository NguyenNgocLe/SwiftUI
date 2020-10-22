//
//  DetailView.swift
//  NavigationLink
//
//  Created by Le on 10/22/20.
//

import SwiftUI

struct DetailView: View {
    var restaurant: Restaurant?
    
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            Text("Họ tên: \(restaurant?.name ?? "")").foregroundColor(Color(red: 255, green: 116 / 255, blue: 255 / 255))
                .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
