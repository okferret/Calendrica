//
//  Date+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical
import Foundation

extension Date: CompatibleValue {}
extension CompatibleWrapper where Base == Date {
    
    /// from icaltimetype
    /// - Parameter icaltimetype: libical.icaltimetype
    /// - Returns: Date
    internal static func from(_ icaltimetype: libical.icaltimetype) -> Date {
        let timeZone: TimeZone
        if let zone = icaltimetype.zone, let tzid = icaltimezone_get_tzid(zone), let tz: TimeZone = .init(identifier: tzid.hub.wrap()) {
            timeZone = tz
        } else {
            timeZone = .autoupdatingCurrent
        }
        // next
        let cmpts: DateComponents = .init(calendar: .current,
                                          timeZone: timeZone,
                                          year:     Int(icaltimetype.year),
                                          month:    Int(icaltimetype.month),
                                          day:      Int(icaltimetype.day),
                                          hour:     Int(icaltimetype.hour),
                                          minute:   Int(icaltimetype.minute),
                                          second:   Int(icaltimetype.second))
        return cmpts.date ?? .init()
    }
    
    /// icaltimetype
    /// - Returns: libical.icaltimetype
    internal func icaltimetype(_ timeZone: Optional<TimeZone> = .current) -> libical.icaltimetype {
        // 时区
        let zone: Optional<icaltimezone>
        if let tzid = timeZone?.identifier, let tz = icaltimezone_get_builtin_timezone_from_tzid(tzid) {
            zone = tz
        } else if let tz = icaltimezone_get_builtin_timezone_from_tzid(TimeZone.current.identifier) {
            zone = tz
        } else {
            zone = .none
        }
        // Components
        let cmpts: DateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: base)
        // next
        return .init(year:          Int32(cmpts.year ?? 0),
                     month:         Int32(cmpts.month ?? 0),
                     day:           Int32(cmpts.day ?? 0),
                     hour:          Int32(cmpts.hour ?? 0),
                     minute:        Int32(cmpts.minute ?? 0),
                     second:        Int32(cmpts.second ?? 0),
                     is_date:       0,
                     is_daylight:   0,
                     zone:          zone)
    }
}
