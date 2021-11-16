//
//  Spotify.swift
//  MusicBox
//
//  Created by Luis Gómez Alonso on 16/11/21.
//

import Foundation
import Combine
import UIKit
import SwiftUI
import KeychainAccess
import SpotifyWebAPI

/**
 A helper class that wraps around an instance of `SpotifyAPI` and provides
 convenience methods for authorizing your application.

 Its most important role is to handle changes to the authorization information
 and save them to persistent storage in the keychain.
 */
final class Spotify: ObservableObject {
    @Published var isAuthorized = false
}
