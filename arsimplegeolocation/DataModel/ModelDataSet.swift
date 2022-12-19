//
//  ModelDataSet.swift
//  arsimplegeolocation
//
//  Created by Yasuhito Nagatomo on 2022/06/19.
//

import Foundation

class ModelDataSet {
    private init() {}

//    static let dataset = ModelAsset.makeDefaultDataSet()
    
    // Add model assets you want to display in AR scenes
    static let dataSet: [ModelAsset] = [
//        ModelAsset(assetName: "Plane",
//                   thumbnailFile: "plane128",
//                   assetFile: "toy_biplane",
//                   place: NPSPlace.ParkerOfficeDeskAppDebug(),
//                   scale: SIMD3<Float>(0.1, 0.1, 0.1))
        
        ModelAsset(assetName: "Plane",
                   thumbnailFile: "plane128",
                   assetFile: "map_pointer",
                   place: NPSPlace.ParkerOfficeDeskAppDebug())
        
//        ModelAsset(assetName: "Plane",
//                   thumbnailFile: "plane128",
//                   assetFile: "FortScott_Revised",
//                   place: NPSPlace.ParkerOfficeDeskAppDebug(),
//                   scale: SIMD3<Float>(0.001, 0.001, 0.001),
//                   orientationOnAxis: -1.5708,
//                   orientationAxis: .X)
    ]
}
