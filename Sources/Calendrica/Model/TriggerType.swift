//
//  TriggerType.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical
import Foundation

/// TriggerType
public struct TriggerType {
    public let time: Date
    public let duration: Duration
}

extension TriggerType: CompatibleValue {}
extension CompatibleWrapper where Base == TriggerType {
    
    /// from icaltriggertype
    /// - Parameter icaltriggertype: libical.icaltriggertype
    /// - Returns: TriggerType
    internal static func from(_ icaltriggertype: libical.icaltriggertype) -> TriggerType {
        return .init(time: .hub.from(icaltriggertype.time), duration: .hub.from(icaltriggertype.duration))
    }
    
    /// icaltriggertype
    /// - Returns: libical.icaltriggertype
    internal func icaltriggertype() -> libical.icaltriggertype {
        return .init(time: base.time.hub.icaltimetype(), duration: base.duration.hub.icaldurationtype())
    }
}
