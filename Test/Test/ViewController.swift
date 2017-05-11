//
//  ViewController.swift
//  test
//
//  Created by Jordan Mander on 11/05/2017.
//  Copyright © 2017 QA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let modelController: ComputerModelController = getModelController()
        let ips = ["localhost", "localhost", "localhost", "localhost"]
        modelController.getComputers(ipAddresses: ips){
            (computers, err) -> Void in
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getModelController() -> ComputerModelController{
        // Dependency injection
        return MockModelController() as! ComputerModelController
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

