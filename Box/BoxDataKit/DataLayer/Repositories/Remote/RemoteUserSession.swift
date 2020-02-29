//
//  RemoteUserSession.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

public struct RemoteUserSession: Codable {
    let token: String
    
    public init(token: String) {
        
        self.token = token
    }
}

extension RemoteUserSession: Equatable {
    
    public static func ==(lhs: RemoteUserSession, rhs: RemoteUserSession) -> Bool {
        
        return lhs.token == rhs.token
    }
}
