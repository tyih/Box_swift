//
//  UserSessionStore.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//
// 对用户信息操作：保存、加载、删除

import Foundation

public protocol UserSessionStore {
    
    /// 保存用户信息
    /// - Parameter userSession: 用户信息
    func save(userSession: UserSession) -> Bool
    
    /// 加载用户信息
    func load() -> UserSession?
    
    /// 删除用户信息
    func delete() -> Bool
}
