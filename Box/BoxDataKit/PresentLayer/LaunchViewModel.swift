//
//  LaunchViewModel.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

public class LaunchViewModel {
    
    let userSessionRepsitory: UserSessionRepository
    let guideResponder: GuideResponder
    let signedInResponder: SignedInResponder
    let browseResponder: BrowseResponder
    
    public init(userSessionRepsitory: UserSessionRepository, guideResponder: GuideResponder, signedInResponder: SignedInResponder, browseResponder: BrowseResponder) {
        
        self.userSessionRepsitory = userSessionRepsitory
        self.guideResponder = guideResponder
        self.signedInResponder = signedInResponder
        self.browseResponder = browseResponder
    }
}
