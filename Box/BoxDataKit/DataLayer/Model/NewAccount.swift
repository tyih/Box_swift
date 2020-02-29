//
//  NewAccount.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

public struct NewAccount: Codable {
    
    public let name: String
    public let email: String
    public let mobile: String
    public let password: Secret
    
    init(name: String, email: String, mobile: String, password: Secret) {
        self.name = name
        self.email = email
        self.mobile = mobile
        self.password = password
    }
}
