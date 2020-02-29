//
//  NiblessViewController.swift
//  BoxUIKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

open class NiblessViewController: UIViewController {
    
    // 只允许代码创建
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable, message: "Loading this view controller from a nib is unsupported")
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @available(*, unavailable, message: "Loading this view controller from a nib is unsupported")
    required public init?(coder: NSCoder) {
        fatalError("Loading this view controller from a nib is unsupported")
    }
}
