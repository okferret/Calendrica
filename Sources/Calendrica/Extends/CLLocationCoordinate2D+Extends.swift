//
//  CLLocationCoordinate2D+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import CoreLocation
import libical

extension CLLocationCoordinate2D: CompatibleValue {}
extension CompatibleWrapper where Base == CLLocationCoordinate2D {
    
    /// from icalgeotype
    /// - Parameter icalgeotype: libical.icalgeotype
    /// - Returns: CLLocationCoordinate2D
    internal static func from(_ icalgeotype: libical.icalgeotype) -> CLLocationCoordinate2D {
        return .init(latitude: icalgeotype.lat, longitude: icalgeotype.lon)
    }
    
    /// icalgeotype
    /// - Returns: libical.icalgeotype
    internal func icalgeotype() -> libical.icalgeotype {
        return .init(lat: base.latitude, lon: base.longitude)
    }
}

