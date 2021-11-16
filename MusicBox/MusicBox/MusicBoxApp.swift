//
//  MusicBoxApp.swift
//  Shared
//
//  Created by Luis Gómez Alonso on 16/11/21.
//

import SwiftUI
import Combine
import SpotifyWebAPI

@main
struct MusicBoxApp: App {
    
    @StateObject var spotify = Spotify()

    init() {
        SpotifyAPILogHandler.bootstrap()
    }

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(spotify)
        }
    }
}
