//
//  FileBasedUserSessionStore.swift
//  BoxDataKit
//
//  Created by tianyao on 2019/12/23.
//  Copyright © 2019 ty.com. All rights reserved.
//

import Foundation

public class FileBasedUserSessionStore: UserSessionStore {
        
    var documentDir: URL {
        return FileManager.default.urls(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.allDomainsMask).first!
    }
    
    var jsonURL: URL {
        
        return documentDir.appendingPathComponent("user_session.json")
    }
    
    
    public init() {}
    
    public func save(userSession: UserSession) -> Bool {
        
        do {
            try encodeAndSave(userSession: userSession)
            return true
        }
        catch {
            print("error\(error.localizedDescription)")
            return false
        }
    }
    
    public func load() -> UserSession? {
        
        do {
            let userSession = try loadUserSession()
            return userSession
        }
        catch {
            print("error\(error.localizedDescription)")
            return nil
        }
    }
    
    public func delete() -> Bool {
        
        do {
            try deleteUserSession()
            return true
        }
        catch {
            print("error\(error.localizedDescription)")
            return false
        }
    }
    
    func encodeAndSave(userSession: UserSession) throws {
        let json = try JSONEncoder().encode(userSession)
        try json.write(to: self.jsonURL)
    }
    
    func loadUserSession() throws -> UserSession {
        let data = try Data(contentsOf: self.jsonURL)
        let userSession = try JSONDecoder().decode(UserSession.self, from: data)
        
        return userSession
    }
    
    func deleteUserSession() throws {
        try FileManager.default.removeItem(at: self.jsonURL)
    }
}
