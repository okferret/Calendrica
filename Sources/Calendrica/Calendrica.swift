// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import libical

typealias icalcomponent = OpaquePointer
typealias icalproperty = OpaquePointer
typealias icalparameter = OpaquePointer
typealias icalvalue = OpaquePointer
typealias icaltimezone = OpaquePointer
typealias icalattach = OpaquePointer

extension icalcomponent_kind: @retroactive Hashable {}

extension icalproperty_kind: @retroactive Hashable {}
extension icalproperty_action: @retroactive Hashable {}
extension icalproperty_busytype: @retroactive Hashable {}
extension icalproperty_carlevel: @retroactive Hashable {}
extension icalproperty_class: @retroactive Hashable {}
extension icalproperty_cmd: @retroactive Hashable {}
extension icalproperty_method: @retroactive Hashable {}
extension icalproperty_pollcompletion: @retroactive Hashable {}
extension icalproperty_pollmode: @retroactive Hashable {}
extension icalproperty_querylevel: @retroactive Hashable {}
extension icalproperty_status: @retroactive Hashable {}
extension icalproperty_taskmode: @retroactive Hashable {}
extension icalproperty_transp: @retroactive Hashable {}
extension icalproperty_xlicclass: @retroactive Hashable {}

extension icalparameter_kind: @retroactive Hashable {}
extension icalparameter_action: @retroactive Hashable {}
extension icalparameter_cutype: @retroactive Hashable {}
extension icalparameter_display: @retroactive Hashable {}
extension icalparameter_enable: @retroactive Hashable {}
extension icalparameter_encoding: @retroactive Hashable {}
extension icalparameter_fbtype: @retroactive Hashable {}
extension icalparameter_feature: @retroactive Hashable {}
extension icalparameter_local: @retroactive Hashable {}
extension icalparameter_partstat: @retroactive Hashable {}
extension icalparameter_patchaction: @retroactive Hashable {}
extension icalparameter_range: @retroactive Hashable {}
extension icalparameter_related: @retroactive Hashable {}
extension icalparameter_reltype: @retroactive Hashable {}
extension icalparameter_required: @retroactive Hashable {}
extension icalparameter_role: @retroactive Hashable {}
extension icalparameter_rsvp: @retroactive Hashable {}
extension icalparameter_scheduleagent: @retroactive Hashable {}
extension icalparameter_scheduleforcesend: @retroactive Hashable {}
extension icalparameter_stayinformed: @retroactive Hashable {}
extension icalparameter_substate: @retroactive Hashable {}
extension icalparameter_value: @retroactive Hashable {}
extension icalparameter_xliccomparetype: @retroactive Hashable {}
extension icalparameter_xlicerrortype: @retroactive Hashable {}

extension icalvalue_kind: @retroactive Hashable {}

extension icalrequeststatus: @retroactive Hashable {}

/// Wrap
public struct Wrap<T>: Hashable where T: RawRepresentable, T: Hashable {
    internal let rawValue: T
    internal init(rawValue: T) {
        self.rawValue = rawValue
    }
}

/// icalcomponent_find_all_component
/// - Parameter parent: icalcomponent
/// - Returns: Array<icalcomponent>
func icalcomponent_find_all_components(of parent: icalcomponent, kind: icalcomponent_kind = ICAL_ANY_COMPONENT) -> Array<icalcomponent> {
    var cmpts: Array<icalcomponent> = []
    var next: Optional<icalcomponent> = icalcomponent_get_first_component(parent, kind)
    while let cmpt = next {
        cmpts += [cmpt]
        next = icalcomponent_get_next_component(parent, ICAL_ANY_COMPONENT)
    }
    return cmpts
}

/// find_children
/// - Parameter parent: icalcomponent
/// - Returns: Array<Component>
func icalcomponent_find_children(of parent: icalcomponent, kind: Component.Kind = .ANY) -> Array<Component> {
    return icalcomponent_find_all_components(of: parent, kind: kind.rawValue).map {
        return icalcomponent_wrap($0)
    }
}

/// icalcomponent_wrap
/// - Parameter root: icalcomponent
/// - Returns: Component
func icalcomponent_wrap(_ root: icalcomponent) -> Component {
    let kind: Component.Kind = .init(rawValue: icalcomponent_isa(root))
    // next
    switch kind {
    case .XROOT:           return XRoot(rawValue: root)
    case .XATTACH:         return XAttach(rawValue: root)
    case .VEVENT:          return VEvent(rawValue: root)
    case .VTODO:           return VTodo(rawValue: root)
    case .VJOURNAL:        return VJournal(rawValue: root)
    case .VCALENDAR:       return VCalendar(rawValue: root)
    case .VAGENDA:         return VAgenda(rawValue: root)
    case .VFREEBUSY:       return VFreebusy(rawValue: root)
    case .VALARM:          return VAlarm(rawValue: root)
    case .XAUDIOALARM:     return XAudioAlarm(rawValue: root)
    case .XDISPLAYALARM:   return XDisplayAlarm(rawValue: root)
    case .XEMAILALARM:     return XEmailAlarm(rawValue: root)
    case .XPROCEDUREALARM: return XProcedureAlarm(rawValue: root)
    case .VTIMEZONE:       return VTimeZone(rawValue: root)
    case .XSTANDARD:       return XStandard(rawValue: root)
    case .XDAYLIGHT:       return XDaylight(rawValue: root)
    case .VSCHEDULE:       return VSchedule(rawValue: root)
    case .VQUERY:          return VQuery(rawValue: root)
    case .VREPLY:          return VReply(rawValue: root)
    case .VCAR:            return VCar(rawValue: root)
    case .VCOMMAND:        return VCommand(rawValue: root)
    case .XLICINVALID:     return XLicInvalid(rawValue: root)
    case .XLICMIMEPART:    return XLicMimePart(rawValue: root)
    case .VAVAILABILITY:   return VAvailability(rawValue: root)
    case .XAVAILABLE:      return XAvailable(rawValue: root)
    case .VPOLL:           return VPoll(rawValue: root)
    case .VVOTER:          return VVoter(rawValue: root)
    case .XVOTE:           return XVote(rawValue: root)
    case .VPATCH:          return VPatch(rawValue: root)
    case .XPATCH:          return XPatch(rawValue: root)
    default:               return Component(rawValue: root)
    }
}

/// icalcomponent_find_all_properties
/// - Parameter cmpt: icalcomponent
/// - Returns: Array<icalproperty>
func icalcomponent_find_all_properties(of cmpt: icalcomponent, kind: icalproperty_kind = ICAL_ANY_PROPERTY) -> Array<icalproperty> {
    var properties: Array<icalproperty> = []
    var next: Optional<icalproperty> = icalcomponent_get_first_property(cmpt, kind)
    while let property = next {
        properties += [property]
        next = icalcomponent_get_next_property(cmpt, ICAL_ANY_PROPERTY)
    }
    return properties
}

/// icalproperty_find_all_parameters
/// - Parameter property: icalproperty
/// - Returns: Array<icalparameter>
func icalproperty_find_all_parameters(of property: icalproperty) -> Array<icalparameter> {
    var parameters: Array<icalparameter> = []
    var next: Optional<icalparameter> = icalproperty_get_first_parameter(property, ICAL_ANY_PARAMETER)
    while let parameter = next {
        parameters += [parameter]
        next = icalproperty_get_next_parameter(property, ICAL_ANY_PARAMETER)
    }
    return parameters
}

// MARK: - 公开

/// 解析
/// - Parameter rfc5545: String
/// - Returns: Component
public func parse<T>(rfc5545: String) throws -> T where T: Component {
    guard let cmpt: icalcomponent = icalparser_parse_string(rfc5545) else {
        throw CalError.custom("RFC5545 解析失败")
    }
    guard icalcomponent_is_valid(cmpt) > 0 else {
        throw CalError.custom("当前RFC5545不合法")
    }
    if let newObj = icalcomponent_wrap(cmpt) as? T {
        return newObj
    } else {
        throw CalError.custom("\(T.self) 解析失败")
    }
}
