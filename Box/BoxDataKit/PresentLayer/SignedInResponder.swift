//
//  SignedInResponder.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

public protocol SignedInResponder {
    
    func signedIn(to userSession: UserSession)
}
