//
//  ExamplesListView.swift
//  MusicBox
//
//  Created by Luis Gómez Alonso on 16/11/21.
//

import SwiftUI

struct ExamplesListView: View {
    
    var body: some View {
        List {
            NavigationLink(
                "Playlists", destination: EmptyView()
            ) //PlaylistsListView()
            NavigationLink(
                "Saved Albums", destination: EmptyView()
            ) //SavedAlbumsGridView()
            NavigationLink(
                "Search For Tracks", destination: EmptyView()
            ) //SearchForTracksView()
            NavigationLink(
                "Recently Played Tracks", destination: EmptyView()
            ) //RecentlyPlayedView()
            NavigationLink(
                "Debug Menu", destination: EmptyView()
            ) //DebugMenuView()
            
            // This is the location where you can add your own views to test out
            // your application. Each view receives an instance of `Spotify`
            // from the environment.
            
        }
        .listStyle(PlainListStyle())
        
    }
}

struct ExamplesListView_Previews: PreviewProvider {
    
    static let spotify: Spotify = {
        let spotify = Spotify()
        spotify.isAuthorized = true
        return spotify
    }()
    
    static var previews: some View {
        NavigationView {
            ExamplesListView()
                .environmentObject(spotify)
        }
    }
}
