//
//  PeriodType.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical
import Foundation

/// PeriodType
public struct PeriodType {
    public let start: Date
    public let end: Date
    public let duration: Duration
}

extension PeriodType: CompatibleValue {}
extension CompatibleWrapper where Base == PeriodType {
    
    /// from icalperiodtype
    /// - Parameter icalperiodtype: libical.icalperiodtype
    /// - Returns: PeriodType
    internal static func from(_ icalperiodtype: libical.icalperiodtype) -> PeriodType {
        return .init(start:     .hub.from(icalperiodtype.start),
                     end:       .hub.from(icalperiodtype.end),
                     duration:  .hub.from(icalperiodtype.duration))
    }
    
    /// icalperiodtype
    /// - Returns: libical.icalperiodtype
    internal func icalperiodtype() -> libical.icalperiodtype {
        return .init(start: base.start.hub.icaltimetype(),
                     end: base.end.hub.icaltimetype(),
                     duration: base.duration.hub.icaldurationtype())
    }
}
