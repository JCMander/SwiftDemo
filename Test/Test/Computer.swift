//
//  Computer.swift
//  test
//
//  Created by Jordan Mander on 11/05/2017.
//  Copyright © 2017 QA. All rights reserved.
//

import Foundation

struct Computer{
    let computerName: String
    let computerMemory: Int64
    let computerFreeMemory: Int64
    let computerUptime: Int64
    let computerType: String
    let computerPlatform: String
    let computerCPUs: [CPU]
}

struct CPU{
    let cpuName: String
    let cpuSpeed: Int64
    
}
