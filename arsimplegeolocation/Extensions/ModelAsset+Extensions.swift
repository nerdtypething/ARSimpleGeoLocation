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
        
        // WES: To use the model true to scale the SIMD<Float> values
        // need to be 1.0, 1.0, 1.0.
        // The -1.57 orientation is SPECIFICALLY for the fort model since
        // for some reason it's oriented on its side. For all other models
        // it should default to 0.
        self.init(id: UUID(),
                  name: assetName,
                  thumbnailFile: thumbnailFile,
                  assetFile: assetFile,
                  scale: SIMD3<Float>(0.001, 0.001, 0.001),
                  orientationOnYAxis: -1.5708,
                  approachingDistance: 10.0,
                  distanceAway: 20.0,
                  latitude: place.latitude,
                  longitude: place.longitude,
                  altitude: place.altitude)
    }
}
