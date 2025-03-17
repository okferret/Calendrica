//
//  Calendrica+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical
import Foundation
import CoreLocation

extension icaltimetype: CompatibleValue {}
extension CompatibleWrapper where Base == icaltimetype {
    
    /// wrap
    /// - Returns: Date
    internal func wrap() -> Date {
        return .hub.from(base)
    }
}

extension icalproperty_action: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_action {
    
    /// wrap
    /// - Returns: Property.Action
    internal func wrap() -> Property.Action {
        return .init(rawValue: base)
    }
}

extension icalproperty_busytype: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_busytype {
    
    /// wrap
    /// - Returns: Property.BusyType
    internal func wrap() -> Property.BusyType {
        return .init(rawValue: base)
    }
}

extension icalproperty_carlevel: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_carlevel {
    
    /// wrap
    /// - Returns: Property.CarLevel
    internal func wrap() -> Property.CarLevel {
        return .init(rawValue: base)
    }
}

extension icalproperty_class: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_class {
    
    /// wrap
    /// - Returns: Property.Class
    internal func wrap() -> Property.Class {
        return .init(rawValue: base)
    }
}

extension icalproperty_cmd: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_cmd {
    
    /// wrap
    /// - Returns: Property.Command
    internal func wrap() -> Property.Command {
        return .init(rawValue: base)
    }
}

extension icaldurationtype: CompatibleValue {}
extension CompatibleWrapper where Base == icaldurationtype {
    
    /// wrap
    /// - Returns: Duration
    internal func wrap() -> Duration {
        return .hub.from(base)
    }
}

extension icalperiodtype: CompatibleValue {}
extension CompatibleWrapper where Base == icalperiodtype {
    
    /// wrap
    /// - Returns: PeriodType
    internal func wrap() -> PeriodType {
        return .hub.from(base)
    }
}

extension icalgeotype: CompatibleValue {}
extension CompatibleWrapper where Base == icalgeotype {
    
    /// wrap
    /// - Returns: CLLocationCoordinate2D
    internal func wrap() -> CLLocationCoordinate2D {
        return .init(latitude: base.lat, longitude: base.lon)
    }
}

extension icalproperty_method: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_method {
    
    /// wrap
    /// - Returns: Property.Method
    internal func wrap() -> Property.Method {
        return .init(rawValue: base)
    }
}

extension icalproperty_pollcompletion: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_pollcompletion {
    
    /// wrap
    /// - Returns: Property.PollCompletion
    internal func wrap() -> Property.PollCompletion {
        return .init(rawValue: base)
    }
}

extension icalproperty_pollmode: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_pollmode {
    
    /// wrap
    /// - Returns: Property.PollMode
    internal func wrap() -> Property.PollMode {
        return .init(rawValue: base)
    }
}

extension icalproperty_querylevel: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_querylevel {
    
    /// wrap
    /// - Returns: Property.QueryLevel
    internal func wrap() -> Property.QueryLevel {
        return .init(rawValue: base)
    }
}

extension icaldatetimeperiodtype: CompatibleValue {}
extension CompatibleWrapper where Base == icaldatetimeperiodtype {
    
    /// wrap
    /// - Returns: DateTimePeriodType
    internal func wrap() -> DateTimePeriodType {
        return .hub.from(base)
    }
}

extension icalproperty_status: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_status {
    
    /// wrap
    /// - Returns: Property.Status
    internal func wrap() -> Property.Status {
        return .init(rawValue: base)
    }
}

extension icalproperty_taskmode: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_taskmode {
    
    /// wrap
    /// - Returns: Property.TaskMode
    internal func wrap() -> Property.TaskMode {
        return .init(rawValue: base)
    }
}

extension icalproperty_transp: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_transp {
    
    /// wrap
    /// - Returns: Property.Transp
    internal func wrap() -> Property.Transp {
        return .init(rawValue: base)
    }
}

extension icaltriggertype: CompatibleValue {}
extension CompatibleWrapper where Base == icaltriggertype {
    
    /// wrap
    /// - Returns: TriggerType
    internal func wrap() -> TriggerType {
        return .hub.from(base)
    }
}

extension icalproperty_xlicclass: CompatibleValue {}
extension CompatibleWrapper where Base == icalproperty_xlicclass {
    
    /// wrap
    /// - Returns: Property.XlicClass
    internal func wrap() -> Property.XlicClass {
        return .init(rawValue: base)
    }
}
