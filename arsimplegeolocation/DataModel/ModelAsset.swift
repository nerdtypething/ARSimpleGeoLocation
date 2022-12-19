//
//  ModelAsset.swift
//  arsimplegeolocation
//
//  Created by Yasuhito Nagatomo on 2022/06/18.
//

import Foundation

enum ModelOrientationAxis {
    case X
    case Y
    case Z
}

struct ModelAsset: Identifiable {
    let id: UUID
    let name: String           // asset name
    let thumbnailFile: String? // thumbnail file name
    let assetFile: String      // USDZ or reality file name in bundle

    let scale: SIMD3<Float>    // display scale
    let orientationOnAxis: Float   // [rad]
    let orientationAxis: ModelOrientationAxis
    let approachingDistance: Double // [m]
    let distanceAway: Double // [m]

    let latitude: Double    // [deg] location to place the model
    let longitude: Double   // [deg]
    let altitude: Double    // [m]
}
