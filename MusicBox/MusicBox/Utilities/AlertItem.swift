//
//  AlertItem.swift
//  MusicBox
//
//  Created by Luis Gómez Alonso on 16/11/21.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    
    init(title: String, message: String) {
        self.title = Text(title)
        self.message = Text(message)
    }
    
    init(title: Text, message: Text) {
        self.title = title
        self.message = message
    }

}

