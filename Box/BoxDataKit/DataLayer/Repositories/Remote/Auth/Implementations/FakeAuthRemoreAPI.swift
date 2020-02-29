//
//  FakeAuthRemoreAPI.swift
//  BoxDataKit
//
//  Created by tiany on 2020/3/1.
//  Copyright © 2020 ty.com. All rights reserved.
//

import Foundation

struct Fake {
    static let email = "ty@qq.com"
    static let password = "123456"
    static let name = "tysun"
    static let mobile = "19988776688"
    static let avatar = makeURL()
    static let token = "xxistoken"
}

public struct FakeAuthRemoreAPI: AuthRemoteAPI {
       
    public init() {}
    
    public func signIn(username: String, password: Secret) -> UserSession? {
        
        // TODO: 登录实现
        guard username == Fake.name && password == Fake.password else {
            print("用户名或密码不对")
            return nil
        }
        
        let profile = UserProfile(name: Fake.name, email: Fake.email, mobile: Fake.mobile, avatar: makeURL())
        
        let remoteSession = RemoteUserSession(token: Fake.token)
        
        let userSession = UserSession(profile: profile, remoteUserSession: remoteSession)
        
        //...
        return nil
    }
    
    public func signUp(account: NewAccount) -> UserSession? {
        
        // TODO: 注册实现
        let profile = UserProfile(name: account.name, email: account.email, mobile: account.mobile, avatar: makeURL())
        
        let remoteSession = RemoteUserSession(token: Fake.token)
        
        let userSession = UserSession(profile: profile, remoteUserSession: remoteSession)
        
        //...
        return nil
    }
}
