//
//  ModelAsset+Extensions.swift
//  arsimplegeolocation
//
//  Created by Ruben Hansen-Rojas on 11/29/22.
//

import Foundation

extension ModelAsset {
    
    init(assetName: String,
         thumbnailFile: String,
         assetFile: String,
         place: GeographicallyPlaceable) {
        
        self.init(id: UUID(),
                  name: assetName,
                  thumbnailFile: thumbnailFile,
                  assetFile: assetFile,
                  scale: SIMD3<Float>(0.05, 0.05, 0.05),
                  orientationOnYAxis: 0,
                  approachingDistance: 10.0,
                  distanceAway: 20.0,
                  latitude: place.latitude,
                  longitude: place.longitude,
                  altitude: place.altitude)
    }
}
