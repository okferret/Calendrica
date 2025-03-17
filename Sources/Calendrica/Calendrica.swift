// The Swift Programming Language
// https://docs.swift.org/swift-book


import libical

typealias icalcomponent = OpaquePointer
typealias icalproperty = OpaquePointer
typealias icalparameter = OpaquePointer
typealias icalvalue = OpaquePointer

/// Wrap
public struct Wrap<T> where T: RawRepresentable {
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
