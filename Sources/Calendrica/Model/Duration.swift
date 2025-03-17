//
//  Duration.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical
import Foundation

/// Duration
public struct Duration {
    public let weeks: UInt
    public let days: UInt
    public let hours: UInt
    public let minutes: UInt
    public let seconds: UInt
}

extension Duration: CompatibleValue {}
extension CompatibleWrapper where Base == Duration {
    
    /// from icaldurationtype
    /// - Parameter icaldurationtype: libical.icaldurationtype
    /// - Returns: Duration
    internal static func from(_ icaldurationtype: libical.icaldurationtype) -> Duration {
        return .init(weeks:     UInt(icaldurationtype.weeks),
                     days:      UInt(icaldurationtype.days),
                     hours:     UInt(icaldurationtype.hours),
                     minutes:   UInt(icaldurationtype.minutes),
                     seconds:   UInt(icaldurationtype.seconds))
    }
    
    /// icaldurationtype
    /// - Returns: libical.icaldurationtype
    internal func icaldurationtype() -> libical.icaldurationtype {
        return .init(is_neg: 0,
                     days:      UInt32(base.days),
                     weeks:     UInt32(base.weeks),
                     hours:     UInt32(base.hours),
                     minutes:   UInt32(base.minutes),
                     seconds:   UInt32(base.seconds))
    }
}
