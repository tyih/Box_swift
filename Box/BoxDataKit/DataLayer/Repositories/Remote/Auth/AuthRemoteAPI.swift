//
//  AuthRemoteAPI.swift
//  BoxDataKit
//
//  Created by tiany on 2020/2/29.
//  Copyright © 2020 ty.com. All rights reserved.
//
// 用户认证：登录、注册

import Foundation

public protocol AuthRemoteAPI {
    
    
    /// 登录
    /// - Parameters:
    ///   - username: 用户名
    ///   - password: 密码
    func signIn(username: String, password: Secret) -> UserSession?
    
    /// 注册
    /// - Parameter account: 账号信息
    func signUp(account: NewAccount) -> UserSession?
}
