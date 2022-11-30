//
//  NPSARModels.swift
//  arsimplegeolocation
//
//  Created by Ruben Hansen-Rojas on 10/30/22.
//

import Foundation

/// A place as defined by the NPS places API.
struct NPSPlace: GeographicallyPlaceable {
    // https://www.nps.gov/subjects/developer/api-documentation.htm#/places/getPlaces
    public private(set) var latitude: Double
    public private(set) var longitude: Double
    public private(set) var altitude: Double
}

extension NPSPlace {
    
    /// Initializer.
    /// - Parameters:
    ///   - json: A key/value mapping.
    init(json: [String: Any]) {
        var latitude: Double = 0.0
        var longitude: Double = 0.0
        var altitude: Double = 0.0
        
        if let jsonLat = json["latitude"] as? Double {
            latitude = jsonLat
        }
        
        if let jsonLon = json["longitude"] as? Double {
            longitude = jsonLon
        }
        
        if let jsonAlt = json["altitude"] as? Double {
            altitude = jsonAlt
        }
        
        self.init(latitude: latitude, longitude: longitude, altitude: altitude)
    }
    
    static func ParkerOfficeDesk() -> NPSPlace {
        return NPSPlace(latitude: 39.51996788283484,
                        longitude: -104.79974943077401,
                        altitude: 1804.0)
    }
    
    static func ParkerOfficeDeskAppDebug() -> NPSPlace {
        return NPSPlace(latitude: 39.519965,
                        longitude: -104.799824,
                        altitude: 1801.0)
    }

    static func ParkerOfficeAcrossTheStreet() -> NPSPlace {
        return NPSPlace(latitude: 39.52033,
                        longitude: -104.80062,
                        altitude: 1803.0)
    }
    
    static func ParkerOfficeCattyCorner() -> NPSPlace {
        return NPSPlace(latitude: 39.52030,
                        longitude: -104.79962,
                        altitude: 1803.0)
    }
}

extension NPSPlace {
    static func Well() -> NPSPlace {
        return NPSPlace(latitude: 39.530444,
                        longitude: -77.642324,
                        altitude: 225.86)
    }
    
    static func FirePit() -> NPSPlace {
        return NPSPlace(latitude: 39.53059,
                        longitude: -77.642589,
                        altitude: 225.86)
    }
    
    static func Swing() -> NPSPlace {
        return NPSPlace(latitude: 39.530028,
                        longitude: -77.642670,
                        altitude: 225.86)
    }
    
    static func Trampoline() -> NPSPlace {
        return NPSPlace(latitude: 39.530125,
                        longitude: -77.642504,
                        altitude: 225.86)
    }
    
    static func Garden() -> NPSPlace {
        return NPSPlace(latitude: 39.530153,
                        longitude: -77.642404,
                        altitude: 225.86)
    }
}
