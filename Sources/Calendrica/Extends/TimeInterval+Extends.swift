//
//  TimeInterval+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical

extension TimeInterval: CompatibleValue {}
extension CompatibleWrapper where Base == TimeInterval {
    
    /// from
    /// - Parameter icaldurationtype: libical.icaldurationtype
    /// - Returns: TimeInterval
    internal static func from(_ icaldurationtype: libical.icaldurationtype) -> TimeInterval {
        return 0
    }
    
    /// icaldurationtype
    /// - Returns: libical.icaldurationtype
    internal func icaldurationtype() -> libical.icaldurationtype {
        let weeks: UInt32   = UInt32(base) / (7 * 24 * 3600)
        let days: UInt32    = (UInt32(base) % (7 * 24 * 3600)) / (24 * 3600)
        let hours: UInt32   = (UInt32(base) % (24 * 3600)) / 3600
        let minutes: UInt32 = (UInt32(base) % 3600) / 60
        let seconds: UInt32 = UInt32(base) % 60
        
        return .init(is_neg: 0, days: days, weeks: weeks, hours: hours, minutes: minutes, seconds: seconds)
    }
}
