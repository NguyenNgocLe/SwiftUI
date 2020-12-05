//
//  Employee.swift
//  MVVMDemo
//
//  Created by Le on 25/11/2020.
//

import Foundation
//MARK: - Employee
struct Employees: Decodable {
    let status: String
    let data: [EmployeeData]
}

// MARK: - EmployeeData
struct EmployeeData: Decodable {
    let id: Int
    let employeeName: String
    let employeeSalary: Double
    let employeeAge: Double
    let profileImage: String
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
