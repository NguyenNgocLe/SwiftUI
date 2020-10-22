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
        Text("Họ tên: \(restaurant?.name ?? "")")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
