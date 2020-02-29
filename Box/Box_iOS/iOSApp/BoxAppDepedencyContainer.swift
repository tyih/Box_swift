//
//  BoxAppDepedencyContainer.swift
//  Box_iOS
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation
import BoxDataKit

public class BoxAppDepedencyContainer {
    let shareMainViewModel: MainViewModel
    let sharedUserSessionRepository: BoxUserSessionRepository
    
    public init() {
        func makeUserSessionStore() -> UserSessionStore {

            return FileBasedUserSessionStore()
        }
        
        func makeAuthRemoteAPI() -> AuthRemoteAPI {

            return FakeAuthRemoreAPI()
        }
        
        func makeMainViewModel() -> MainViewModel {
            return MainViewModel()
        }
        
        func makeUserSessionRepository() -> BoxUserSessionRepository {
            
            return BoxUserSessionRepository(userSessionStore: makeUserSessionStore(), authRemoteAPI: makeAuthRemoteAPI())
        }
        
        self.shareMainViewModel = makeMainViewModel()
        self.sharedUserSessionRepository = makeUserSessionRepository()
    }
}
