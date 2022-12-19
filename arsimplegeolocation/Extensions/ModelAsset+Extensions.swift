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
         place: GeographicallyPlaceable,
         scale: SIMD3<Float> = SIMD3<Float>(1.0, 1.0, 1.0),
         orientationOnAxis: Float = 0.0,
         orientationAxis: ModelOrientationAxis = .X) {
        
        self.init(id: UUID(),
                  name: assetName,
                  thumbnailFile: thumbnailFile,
                  assetFile: assetFile,
                  scale: scale,
                  orientationOnAxis: orientationOnAxis,
                  orientationAxis: orientationAxis,
                  approachingDistance: 10.0,
                  distanceAway: 20.0,
                  latitude: place.latitude,
                  longitude: place.longitude,
                  altitude: place.altitude)
    }
    
    static func makeDefaultDataSet() -> [ModelAsset] {
        // (c)Apple, from Apple AR Quick Library
        // https://developer.apple.com/augmented-reality/quick-look/
        // size (x, y, z) = (6, 7.32, 4.63) [m]
        return [
            ModelAsset(
                id: UUID(),
                name: "Drummer",
                thumbnailFile: "drummer128",
                assetFile: "toy_drummer",
                scale: SIMD3<Float>(1, 1, 1),
                orientationOnAxis: 0,
                orientationAxis: .X,
                approachingDistance: 10.0, // [m]
                distanceAway: 20.0, // [m]
                latitude: 35.68157,   // Tokyo station <== please change to a location near you
                longitude: 139.76561, //               <== please change to a location near you
                altitude: 3.5),       //               <== please change to a location near you
    
            ModelAsset(
                id: UUID(),
                name: "Robot",
                thumbnailFile: "robot128",
                assetFile: "toy_robot_vintage",
                scale: SIMD3<Float>(1, 1, 1),
                orientationOnAxis: 0,
                orientationAxis: .X,
                approachingDistance: 10.0, // [m]
                distanceAway: 20.0, // [m]
                latitude: 35.68138,   // Tokyo station <== please change to a location near you
                longitude: 139.76543, //               <== please change to a location near you
                altitude: 3.5),       //               <== please change to a location near you

            ModelAsset(
                id: UUID(),
                name: "Plane",
                thumbnailFile: "plane128",
                assetFile: "toy_biplane",
                scale: SIMD3<Float>(1, 1, 1),
                orientationOnAxis: 0,
                orientationAxis: .X,
                approachingDistance: 10.0, // [m]
                distanceAway: 20.0, // [m]
                latitude: 39.51996788283484,   // Tokyo station <== please change to a location near you
                longitude: -104.79974943077401, //               <== please change to a location near you
                altitude: 1804.0),        //               <== please change to a location near you
        ]
    }
}
