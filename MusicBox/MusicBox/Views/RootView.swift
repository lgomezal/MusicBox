//
//  ContentView.swift
//  Shared
//
//  Created by Luis Gómez Alonso on 16/11/21.
//

import SwiftUI
import Combine
import SpotifyWebAPI

struct RootView: View {
    @EnvironmentObject var spotify: Spotify
    
    @State private var alert: AlertItem? = nil

    @State private var cancellables: Set<AnyCancellable> = []
    
    var body: some View {
        NavigationView {
            ExamplesListView()
                .navigationBarTitle("Music Box App")
                //.navigationBarItems(trailing: logoutButton)
                .disabled(!spotify.isAuthorized)
        }
        // The login view is presented if `Spotify.isAuthorized` == `false. When
        // the login button is tapped, `Spotify.authorize()` is called. After
        // the login process successfully completes, `Spotify.isAuthorized` will
        // be set to `true` and `LoginView` will be dismissed, allowing the user
        // to interact with the rest of the app.
        //.modifier(LoginView())
        // Presented if an error occurs during the process of authorizing with
        // the user's Spotify account.
        .alert(item: $alert) { alert in
            Alert(title: alert.title, message: alert.message)
        }
        // Called when a redirect is received from Spotify.
        .onOpenURL(perform: handleURL(_:))
        
    }
    
    func handleURL(_ url: URL) {
        
    }
}

struct RootView_Previews: PreviewProvider {
    
    static let spotify: Spotify = {
        let spotify = Spotify()
        spotify.isAuthorized = true
        return spotify
    }()
    
    static var previews: some View {
        RootView()
            .environmentObject(spotify)
    }
}
