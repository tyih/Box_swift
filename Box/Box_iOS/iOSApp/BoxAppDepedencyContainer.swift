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
    
    public func makeLaunchViewController() -> LaunchViewController {
        
        return LaunchViewController(launchViewModelFactory: self)
    }
    
    public func makeMainViewController() -> MainViewController {
        let launchViewController = makeLaunchViewController()
        
        return MainViewController(viewModel: shareMainViewModel, launchViewController: launchViewController)
        
    }
}

extension BoxAppDepedencyContainer: LaunchViewModelFactory {
    
    func makeLaunchViewModel() -> LaunchViewModel {
        
        return LaunchViewModel(userSessionRepsitory: sharedUserSessionRepository, guideResponder: shareMainViewModel, signedInResponder: shareMainViewModel, browseResponder: shareMainViewModel)
    }
}
