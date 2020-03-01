//
//  MainViewModel.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//
// 导航model

import Foundation

public class MainViewModel: GuideResponder, SignedInResponder, BrowseResponder {
    
    public init() {}
    
    public func guide() {
        // 导航
    }
    
    public func signedIn(to userSession: UserSession) {
        // 登录
    }
    
    public func browse() {
        // 浏览
    }
}
