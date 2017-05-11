//
//  ModelController.swift
//  test
//
//  Created by Jordan Mander on 11/05/2017.
//  Copyright © 2017 QA. All rights reserved.
//

import Foundation

typealias ComputersCallback = ([Computer]?, NSError?) -> Void

protocol ComputerModelController {
    func getComputers(ipAddresses: [String], callback: ComputersCallback) -> Void
}

struct MockModelController{
    func getComputers(ipAddresses: [String], callback: ComputersCallback) -> Void{
        var computers = [Computer]()
        var cpus = [CPU]()
        cpus.append(CPU(cpuName: "Fake CPU", cpuSpeed: 42))
        for i in 0...ipAddresses.count{
            let computer = Computer(computerName: "Computer \(i)", computerMemory: 420000, computerFreeMemory: 200000, computerUptime: 42, computerType: "Mock", computerPlatform: "Mock platform", computerCPUs: cpus)
            computers.append(computer)
        }
        callback(computers, nil)
        
    }
}
