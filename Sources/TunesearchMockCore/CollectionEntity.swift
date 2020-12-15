//
//  File.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 15.12.20.
//

import Foundation
import TunesearchCorePorts

class CollectionEntity : TrackCollection {
    internal init(name: String, tracks: [Track]) {
        self.name = name
        self.tracks = tracks
    }
    
    var name: String
    var tracks: [Track]
        
}
