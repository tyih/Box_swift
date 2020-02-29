//
//  UserSessionRepository.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//
// 用户会话：登录、登出、注册、登录状态...

import Foundation

public protocol UserSessionRepository {
    
    /// 读取用户信息
    func readUserSession() -> UserSession?
    
    
    /// 注册
    /// - Parameter newAccount: 账号信息
    func signUp(newAccount: NewAccount) -> UserSession?
    
    
    /// 登录
    /// - Parameters:
    ///   - email: 邮箱
    ///   - password: 密码
    func signIn(email: String, password: Secret) -> UserSession?
    
    /// 登出
    func signOut() -> Bool
    
    /// 登录状态
    func isSignedIn() -> Bool
}
