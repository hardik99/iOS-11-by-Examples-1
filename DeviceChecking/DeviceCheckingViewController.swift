//
//  DeviceCheckingViewController.swift
//  iOS-11-by-Examples
//
//  Created by PowerMobile Team on 18/06/2017.
//  Copyright © 2017 PowerMobile Team. All rights reserved.
//

import UIKit
import DeviceCheck

class DeviceCheckingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
        DCDevice.current.generateToken { data, error in
            print(data ?? "No data")
            print(error ?? "No errors")
        }
    }
}
