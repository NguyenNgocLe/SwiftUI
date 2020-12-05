//
//  APIService.swift
//  MVVMDemo
//
//  Created by Le on 25/11/2020.
//

import Foundation

class APIService: NSObject {
    private var sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!
    
    func apiToGetEmployeeData(completion: @escaping (Employees) -> ()) {
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let empData = try! jsonDecoder.decode(Employees.self, from: data)
                completion(empData)
            }
        }
    }
}
