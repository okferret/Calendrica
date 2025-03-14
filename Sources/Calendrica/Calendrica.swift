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

