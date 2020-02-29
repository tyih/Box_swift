//
//  UserSession.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

public class UserSession: Codable {
    
    public let profile: UserProfile
    public let remoteUserSession: RemoteUserSession
    
    public init(profile: UserProfile, remoteUserSession: RemoteUserSession) {
        self.profile = profile
        self.remoteUserSession = remoteUserSession
    }
}

extension UserSession: Equatable {
    
    public static func ==(lhs: UserSession, rhs: UserSession) -> Bool {
        
        return lhs.profile == rhs.profile && lhs.remoteUserSession == rhs.remoteUserSession
    }
}
