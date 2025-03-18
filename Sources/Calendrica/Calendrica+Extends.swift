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

extension icalparameter_action: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_action {
    
    /// wrap
    /// - Returns: Parameter.Action
    internal func wrap() -> Parameter.Action {
        return .init(rawValue: base)
    }
}

extension icalparameter_cutype: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_cutype {
    
    /// wrap
    /// - Returns: Parameter.CuType
    internal func wrap() -> Parameter.CuType {
        return .init(rawValue: base)
    }
}

extension icalparameter_display: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_display {
    
    /// wrap
    /// - Returns: Parameter.Display
    internal func wrap() -> Parameter.Display {
        return .init(rawValue: base)
    }
}

extension icalparameter_enable: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_enable {
    
    /// wrap
    /// - Returns: Parameter.Enable
    internal func wrap() -> Parameter.Enable {
        return .init(rawValue: base)
    }
}

extension icalparameter_encoding: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_encoding {
    
    /// wrap
    /// - Returns: Parameter.Encoding
    internal func wrap() -> Parameter.Encoding {
        return .init(rawValue: base)
    }
}

extension icalparameter_fbtype: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_fbtype {
    
    /// wrap
    /// - Returns: Parameter.FbType
    internal func wrap() -> Parameter.FbType {
        return .init(rawValue: base)
    }
}

extension icalparameter_feature: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_feature {
    
    /// wrap
    /// - Returns: Parameter.Feature
    internal func wrap() -> Parameter.Feature {
        return .init(rawValue: base)
    }
}

extension icalparameter_local: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_local {
    
    /// wrap
    /// - Returns: Parameter.Local
    internal func wrap() -> Parameter.Local {
        return .init(rawValue: base)
    }
}

extension icalparameter_partstat: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_partstat {
    
    /// wrap
    /// - Returns: Parameter.Partstat
    internal func wrap() -> Parameter.Partstat {
        return .init(rawValue: base)
    }
}

extension icalparameter_patchaction: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_patchaction {
    
    /// wrap
    /// - Returns: Parameter.PatchAction
    internal func wrap() -> Parameter.PatchAction {
        return .init(rawValue: base)
    }
}

extension icalparameter_range: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_range {
    
    /// wrap
    /// - Returns: Parameter.Range
    internal func wrap() -> Parameter.Range {
        return .init(rawValue: base)
    }
}

extension icalparameter_related: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_related {
    
    /// wrap
    /// - Returns: Parameter.Related
    internal func wrap() -> Parameter.Related {
        return .init(rawValue: base)
    }
}

extension icalparameter_reltype: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_reltype {
    
    /// wrap
    /// - Returns: Parameter.RelType
    internal func wrap() -> Parameter.RelType {
        return .init(rawValue: base)
    }
}

extension icalparameter_required: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_required {
    
    /// wrap
    /// - Returns: Parameter.Required
    internal func wrap() -> Parameter.Required {
        return .init(rawValue: base)
    }
}

extension icalparameter_role: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_role {
    
    /// wrap
    /// - Returns: Parameter.Role
    internal func wrap() -> Parameter.Role {
        return .init(rawValue: base)
    }
}

extension icalparameter_rsvp: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_rsvp {
    
    /// wrap
    /// - Returns: Parameter.RSVP
    internal func wrap() -> Parameter.RSVP {
        return .init(rawValue: base)
    }
}

extension icalparameter_scheduleagent: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_scheduleagent {
    
    /// wrap
    /// - Returns: Parameter.ScheduleAgent
    internal func wrap() -> Parameter.ScheduleAgent {
        return .init(rawValue: base)
    }
}

extension icalparameter_scheduleforcesend: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_scheduleforcesend {
    
    /// wrap
    /// - Returns: Parameter.ScheduleForceSend
    internal func wrap() -> Parameter.ScheduleForceSend {
        return .init(rawValue: base)
    }
}

extension icalparameter_stayinformed: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_stayinformed {
    
    /// wrap
    /// - Returns: Parameter.StayInformed
    internal func wrap() -> Parameter.StayInformed {
        return .init(rawValue: base)
    }
}

extension icalparameter_substate: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_substate {
    
    /// wrap
    /// - Returns: Parameter.Substate
    internal func wrap() -> Parameter.Substate {
        return .init(rawValue: base)
    }
}

extension icalparameter_value: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_value {
    
    /// wrap
    /// - Returns: Parameter.Value
    internal func wrap() -> Parameter.Value {
        return .init(rawValue: base)
    }
}

extension icalparameter_xliccomparetype: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_xliccomparetype {
    
    /// wrap
    /// - Returns: Parameter.XlicCompareType
    internal func wrap() -> Parameter.XlicCompareType {
        return .init(rawValue: base)
    }
}

extension icalparameter_xlicerrortype: CompatibleValue {}
extension CompatibleWrapper where Base == icalparameter_xlicerrortype {
    
    /// wrap
    /// - Returns: Parameter.XlicErrorType
    internal func wrap() -> Parameter.XlicErrorType {
        return .init(rawValue: base)
    }
}
