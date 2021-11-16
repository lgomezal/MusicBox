//
//  MusicBoxApp.swift
//  Shared
//
//  Created by Luis Gómez Alonso on 16/11/21.
//

import SwiftUI
import Combine
import SpotifyWebAPI
import KeychainAccess

@main
struct MusicBoxApp: App {
    
    //To delete keychain execute
    //let keychain = Keychain(service: "com.codigohifi.MusicBox")
    //let authorizationManagerKey = "authorizationManager"
    
    @StateObject var spotify = Spotify()

    init() {
        SpotifyAPILogHandler.bootstrap()
        //To delete keychain execute
        /*do {
            /*
             Remove the authorization information from the keychain.

             If you don't do this, then the authorization information that you
             just removed from memory by calling
             `SpotifyAPI.authorizationManager.deauthorize()` will be retrieved
             again from persistent storage after this app is quit and
             relaunched.
             */
            try keychain.remove(self.authorizationManagerKey)
            print("did remove authorization manager from keychain")
            
        } catch {
            print(
                "couldn't remove authorization manager " +
                "from keychain: \(error)"
            )
        }*/
    }

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(spotify)
        }
    }
}
