//
//  EmployeeViewModel.swift
//  MVVMDemo
//
//  Created by Le on 25/11/2020.
//

import Foundation

class EmployeesViewModel: NSObject {
    private var apiService: APIService!
    // ràng buộc giữa viewModel và viewController thông qua did set
    // Nhận dữ liệu từ APIService và thông báo cho View rằng đã có những thay đổi
    private(set) var empData: Employees! {
        didSet {
            self.bindEmployeeViewModelToController()
            // sau khi nhận được data từ APIService -> đưa dữ liệu từ ViewModel cho View để
            // cập nhật lại UI
        }
    }
    
    // khởi tạo 1 closure, đây là 1 closure sẽ được gọi từ ViewController qua hàm didSet
    // của biết empData khi nhận được dữ liệu trả về từ APIService
    var bindEmployeeViewModelToController : (() -> ()) = {}
    override init() {
        super.init()
        // khởi tạo đối tượng APIService
        //để có thể sử dụng được method APIService
        self.apiService = APIService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiService.apiToGetEmployeeData { (empData) in
            print(empData)
            // khi dữ liệu trả về sẽ có sự thay đổi thì hàm didset ở trên sẽ được chạy!
            self.empData = empData
        }
    }
}
