//
//  GeographicallyPlaceable.swift
//  arsimplegeolocation
//
//  Created by Ruben Hansen-Rojas on 11/29/22.
//

import Foundation

/// A type that defines geographic coordinates.
public protocol GeographicallyPlaceable {
    
    /// A latitude specified in degrees.
    var latitude: Double { get }
    
    /// A longitude specified in degrees.
    var longitude: Double { get }
    
    /// An altitude specified  in meters.
    var altitude: Double { get }
}

