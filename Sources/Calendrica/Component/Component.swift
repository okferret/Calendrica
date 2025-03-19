//
//  Component.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// NSObject
public class Component: CustomStringConvertible {
    
    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalcomponent_isa(rawValue)) }
    /// String
    public var name: String { kind.rawValue.name }
    /// Array<Component>
    public var components: Array<Component> { icalcomponent_find_all_components(for: rawValue, kind: .ANY) }
    /// Array<Property>
    public var properties: Array<Property> { icalcomponent_find_all_properties(for: rawValue, kind: .ANY) }
    /// String
    public var description: String { icalcomponent_as_ical_string(rawValue).hub.wrap() }
    
    // MARK: - 私有属性
    
    /// icalcomponent
    internal let rawValue: icalcomponent
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalcomponent
    internal init(rawValue: icalcomponent) {
        self.rawValue = rawValue
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public init(rfc5545: String) {
        self.rawValue = icalcomponent_new_from_string(rfc5545)
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public init(kind: Kind) {
        self.rawValue = icalcomponent_new(kind.rawValue)
    }
    
    deinit {
        if icalcomponent_get_parent(rawValue) == .none {
            icalcomponent_free(rawValue)
        }
    }
    
}

extension Component {
    
    /// parseBody
    /// - Parameter rfc5545: String
    /// - Returns: Component
    public static func parseBody<T>(_ rfc5545: String) throws -> T where T: Component {
        return try parse(rfc5545)
    }
    
    /// components for kind
    /// - Parameter kind: Component.Kind
    /// - Returns: Array<Component>
    public func components<T>(for kind: Component.Kind) -> Array<T> where T: Component {
        return icalcomponent_find_all_components(for: rawValue, kind: kind).compactMap { $0 as? T }
    }
    
    /// child for kind
    /// - Parameter kind: Component.Kind
    /// - Returns: Optional<Component>
    public func component<T>(for kind: Component.Kind) -> Optional<T> where T: Component {
        return icalcomponent_find_first_component(for: rawValue, kind: kind) as? T
    }
    
    /// add child
    /// - Parameter child: Component
    /// - Returns: Component
    @discardableResult
    public func add(_ child: Component) -> Component {
        icalcomponent_add_component(rawValue, child.rawValue)
        return child
    }
    
    /// remove child
    /// - Parameter child: Component
    public func remove(_ child: Component) {
        icalcomponent_remove_component(rawValue, child.rawValue)
    }
    
    /// remove
    /// - Parameter kind: Component.Kind
    public func remove(by kind: Component.Kind) {
        icalcomponent_find_all_components(for: rawValue, kind: kind).forEach {
            icalcomponent_remove_component(rawValue, $0.rawValue)
        }
    }
    
    /// addProperty
    /// - Parameter property: Property
    /// - Returns: Property
    @discardableResult
    public func addProperty(_ property: Property) -> Property {
        icalcomponent_add_property(rawValue, property.rawValue)
        return property
    }
    
    /// remove property
    /// - Parameter property: Property
    public func rmProperty(_ property: Property) {
        icalcomponent_remove_property(rawValue, property.rawValue)
    }
    
    /// rmProperty by kind
    /// - Parameter kind: Property.Kind
    public func rmProperty(by kind: Property.Kind) {
        icalcomponent_find_all_properties(for: rawValue, kind: kind).forEach {
            icalcomponent_remove_property(rawValue, $0.rawValue)
        }
    }
    
    /// property for kind
    /// - Parameter kind: Property.Kind
    /// - Returns: Optional<Property>
    public func property(for kind: Property.Kind) -> Optional<Property> {
        if let first = icalcomponent_find_first_property(for: rawValue, kind: kind) {
            return first
        } else {
            return .none
        }
    }
    
    /// properties for kind
    /// - Parameter kind: Property.Kind
    /// - Returns: Array<Property>
    public func properties(for kind: Property.Kind) -> Array<Property> {
        return icalcomponent_find_all_properties(for: rawValue, kind: kind)
    }
    
}
