//
//  MainViewController.swift
//  Box_iOS
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation
import BoxUIKit
import BoxDataKit

public class MainViewController: NiblessViewController {
    
    let viewModel: MainViewModel
    
    let launchViewController: LaunchViewController
    // 导航
//    let guideViewController:
    // 浏览
//    var browseViewController:
    
    public init(viewModel: MainViewModel, launchViewController: LaunchViewController) {
        
        self.viewModel = viewModel
        self.launchViewController = launchViewController
        
        super.init()
    }
    
    public override func viewDidLoad() {
        view.backgroundColor = UIColor.red
    }
}
