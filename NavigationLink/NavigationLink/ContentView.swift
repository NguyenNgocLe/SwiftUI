//
//  ContentView.swift
//  NavigationLink
//
//  Created by Le on 10/22/20.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        Text(restaurant.name)
    }
}

struct ContentView: View {
    var body: some View {
        let first = Restaurant(name: "Nguyễn")
        let second = Restaurant(name: "Ngọc")
        let three = Restaurant(name: "Lễ")
        let array = [first, second, three]
        return NavigationView {
            VStack {
                List(array) { arr in
                    RestaurantRow(restaurant: arr)
                }.navigationTitle("Họ tên")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
