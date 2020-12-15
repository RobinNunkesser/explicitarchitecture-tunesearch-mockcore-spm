//
//  File.swift
//  
//
//  Created by Prof. Dr. Nunkesser, Robin on 15.12.20.
//

import Foundation
import TunesearchCorePorts

class TrackEntity: Track, Comparable {
    internal init(artistName: String, collectionName: String, trackName: String? = nil, trackNumber: Int? = nil, discNumber: Int? = nil, artworkUrl: URL) {
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.trackNumber = trackNumber
        self.discNumber = discNumber
        self.artworkUrl = artworkUrl
    }
    
    var artistName: String
    var collectionName: String
    var trackName: String?
    var trackNumber: Int?
    var discNumber: Int?
    var artworkUrl: URL
    
    public static func < (lhs: TrackEntity, rhs: TrackEntity) -> Bool {
        if lhs.collectionName != rhs.collectionName {
            return lhs.collectionName < rhs.collectionName
        }
        if lhs.discNumber != rhs.discNumber {
            return lhs.discNumber ?? 0 < rhs.discNumber ?? 0
        }
        return lhs.trackNumber ?? 0 < rhs.trackNumber ?? 0
    }
    
    public static func == (lhs: TrackEntity, rhs: TrackEntity) -> Bool {
        return (lhs.collectionName == rhs.collectionName) &&
            (lhs.trackNumber == rhs.trackNumber) &&
        (lhs.discNumber == rhs.discNumber)
    }
}
