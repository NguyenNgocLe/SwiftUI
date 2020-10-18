//
//  ContentView.swift
//  DanamicList
//
//  Created by Le on 10/18/20.
//

import SwiftUI

struct Student: Identifiable {
    var id = UUID()
    var name: String
}

struct StudentRow: View {
    var student: Student
    
    var body: some View {
        Text("\(student.name)")
    }
}

struct ContentView: View {
    var listStudent = [
        Student(name: "Nguyễn Ngọc Lễ"),
        Student(name: "Đặng Minh Tân"),
        Student(name: "Đặng Vi Duy Phương"),
        Student(name: "Lê Văn Hồng An"),
        Student(name: "Trương Văn Ty"),
        Student(name: "Nguyễn Đình Sơn")
    ]
    
    var body: some View {
        List(listStudent) { student in
            StudentRow(student: student)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
