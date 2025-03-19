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
public struct Wrap<T>: Hashable, CustomStringConvertible  where T: RawRepresentable, T: Hashable, T: CustomStringConvertible {
    public var description: String { rawValue.description }
    internal let rawValue: T
    internal init(rawValue: T) {
        self.rawValue = rawValue
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

/// icalcomponent_find_all_components
/// - Parameters:
///   - parent: icalcomponent
///   - kind: Component.Kind
/// - Returns: Array<Component>
func icalcomponent_find_all_components(of parent: icalcomponent, kind: Component.Kind) -> Array<Component> {
    var cmpts: Array<Component> = []
    var next: Optional<icalcomponent> = icalcomponent_get_first_component(parent, kind.rawValue)
    while let cmpt = next {
        cmpts += [icalcomponent_wrap(cmpt)]
        next = icalcomponent_get_next_component(parent, kind.rawValue)
    }
    return cmpts
}

/// icalcomponent_find_first_component
/// - Parameters:
///   - parent: icalcomponent
///   - kind: Component.Kind
/// - Returns: Optional<Component>
func icalcomponent_find_first_component(of parent: icalcomponent, kind: Component.Kind) -> Optional<Component> {
    if let first: icalcomponent = icalcomponent_get_first_component(parent, kind.rawValue) {
        return icalcomponent_wrap(first)
    } else {
        return .none
    }
}

/// icalcomponent_find_all_properties
/// - Parameters:
///   - cmpt: icalcomponent
///   - kind: Property.Kind
/// - Returns: Array<Property>
func icalcomponent_find_all_properties(of cmpt: icalcomponent, kind: Property.Kind) -> Array<Property> {
    var properties: Array<Property> = []
    var next: Optional<icalproperty> = icalcomponent_get_first_property(cmpt, kind.rawValue)
    while let rawValue = next {
        properties += [.init(rawValue: rawValue)]
        next = icalcomponent_get_next_property(cmpt, kind.rawValue)
    }
    return properties
}

/// icalcomponent_find_first_property
/// - Parameters:
///   - cmpt: icalcomponent
///   - kind: icalproperty_kind
/// - Returns: Optional<icalproperty>
func icalcomponent_find_first_property(of cmpt: icalcomponent, kind: Property.Kind) -> Optional<Property> {
    if let first: icalproperty = icalcomponent_get_first_property(cmpt, kind.rawValue) {
        return .init(rawValue: first)
    } else {
        return .none
    }
}

/// icalproperty_find_all_parameters
/// - Parameter property: icalproperty
/// - Returns: Array<icalparameter>
func icalproperty_find_all_parameters(of property: icalproperty, kind: Parameter.Kind) -> Array<Parameter> {
    var parameters: Array<Parameter> = []
    var next: Optional<icalparameter> = icalproperty_get_first_parameter(property, kind.rawValue)
    while let rawValue = next {
        parameters += [.init(rawValue: rawValue)]
        next = icalproperty_get_next_parameter(property, kind.rawValue)
    }
    return parameters
}

/// icalproperty_find_first_parameter
/// - Parameters:
///   - property: icalproperty
///   - kind: Parameter.Kind
/// - Returns: Optional<Parameter>
func icalproperty_find_first_parameter(of property: icalproperty, kind: Parameter.Kind) -> Optional<Parameter> {
    if let first = icalproperty_get_first_parameter(property, kind.rawValue) {
        return .init(rawValue: first)
    } else {
        return .none
    }
}

// MARK: - 公开

/// 解析
/// - Parameter rfc5545: String
/// - Returns: Component
public func parse<T>(_ rfc5545: String) throws -> T where T: Component {
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
