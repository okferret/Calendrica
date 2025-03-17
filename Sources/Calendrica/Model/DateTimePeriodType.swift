//
//  DateTimePeriodType.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical
import Foundation

/// DateTimePeriodType
public struct DateTimePeriodType {
    public let time: Date
    public let period: PeriodType
}

extension DateTimePeriodType: CompatibleValue {}
extension CompatibleWrapper where Base == DateTimePeriodType {
    
    /// from icaldatetimeperiodtype
    /// - Parameter icaldatetimeperiodtype: libical.icaldatetimeperiodtype
    /// - Returns: DateTimePeriodType
    internal static func from(_ icaldatetimeperiodtype: libical.icaldatetimeperiodtype) -> DateTimePeriodType {
        return .init(time:      .hub.from(icaldatetimeperiodtype.time),
                     period:    .hub.from(icaldatetimeperiodtype.period))
    }
    
    /// icaldatetimeperiodtype
    /// - Returns: libical.icaldatetimeperiodtype
    internal func icaldatetimeperiodtype() -> libical.icaldatetimeperiodtype {
        return .init(time: base.time.hub.icaltimetype(), period: base.period.hub.icalperiodtype())
    }
}
