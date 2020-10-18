//
//  ContentView.swift
//  ListViewGroup
//
//  Created by Le on 10/18/20.
//

import SwiftUI

struct RowView: View {
    var body: some View {
        Text("Row view")
    }
}

struct ContentView: View {
    var body: some View {
        List {
            Section(header: Text("Group 1:")) {
                RowView()
                RowView()
                RowView()
            }
            Section(header: Text("Group 2:")) {
                RowView()
                RowView()
                RowView()
            }
            Section(header: Text("Group 3:")) {
                RowView()
                RowView()
                RowView()
            }
            Section(header: Text("Group 4:")) {
                RowView()
                RowView()
                RowView()
            }
            Section(header: Text("Group 5:")) {
                RowView()
                RowView()
                RowView()
            }
            Section(header: Text("Group 6:")) {
                RowView()
                RowView()
                RowView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
