//
//  BoxUserSessionRepository.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

public class BoxUserSessionRepository: UserSessionRepository {
    
    let userSessionStore: UserSessionStore
    let authRemoteAPI: AuthRemoteAPI
    
    public init(userSessionStore: UserSessionStore, authRemoteAPI: AuthRemoteAPI) {
        self.userSessionStore = userSessionStore
        self.authRemoteAPI = authRemoteAPI
    }
    
    public func readUserSession() -> UserSession? {
        
        return userSessionStore.load()
    }
    
    public func signUp(newAccount: NewAccount) -> UserSession? {
        
        return authRemoteAPI.signUp(account: newAccount)
    }
    
    public func signIn(email: String, password: Secret) -> UserSession? {
        
        return authRemoteAPI.signIn(username: email, password: password)
    }
    
    public func signOut() -> Bool {
        
        return userSessionStore.delete()
    }
    
    public func isSignedIn() -> Bool {
        
        if readUserSession() != nil {
            return true
        }
        return false
    }
}
