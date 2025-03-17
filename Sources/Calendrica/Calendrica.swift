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
internal func icalcomponent_find_all_components(of parent: icalcomponent) -> Array<icalcomponent> {
    var cmpts: Array<icalcomponent> = []
    var next: Optional<icalcomponent> = icalcomponent_get_first_component(parent, ICAL_ANY_COMPONENT)
    while let cmpt = next {
        cmpts += [cmpt]
        next = icalcomponent_get_next_component(parent, ICAL_ANY_COMPONENT)
    }
    return cmpts
}

/// icalcomponent_find_all_properties
/// - Parameter cmpt: icalcomponent
/// - Returns: Array<icalproperty>
internal func icalcomponent_find_all_properties(of cmpt: icalcomponent) -> Array<icalproperty> {
    var properties: Array<icalproperty> = []
    var next: Optional<icalproperty> = icalcomponent_get_first_property(cmpt, ICAL_ANY_PROPERTY)
    while let property = next {
        properties += [property]
        next = icalcomponent_get_next_property(cmpt, ICAL_ANY_PROPERTY)
    }
    return properties
}

