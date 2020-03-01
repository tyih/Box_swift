//
//  LaunchViewController.swift
//  Box_iOS
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation
import BoxUIKit
import BoxDataKit

protocol LaunchViewModelFactory {
    func makeLaunchViewModel() -> LaunchViewModel
}

public class LaunchViewController: NiblessViewController {
    let viewModel: LaunchViewModel
    
    init(launchViewModelFactory: LaunchViewModelFactory) {
        self.viewModel = launchViewModelFactory.makeLaunchViewModel()
        super.init()
    }
    
}
