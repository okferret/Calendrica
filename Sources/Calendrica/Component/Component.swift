//
//  Component.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// NSObject
public class Component: NSObject {

    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind {
        return .init(rawValue: icalcomponent_isa(rawValue))
    }
    
    /// Array<Component>
    public var children: Array<Component> {
        return icalcomponent_find_children(of: rawValue)
    }
    
    /// Array<Property>
    public var properties: Array<Property> {
        return icalcomponent_find_all_properties(of: rawValue).map { .init(rawValue: $0) }
    }
    
    /// String
    public override var description: String {
        return rfc5545()
    }
    
    // MARK: - 私有属性
    
    /// icalcomponent
    internal let rawValue: icalcomponent
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalcomponent
    internal init(rawValue: icalcomponent) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    internal init(rfc5545: String) {
        self.rawValue = icalcomponent_new_from_string(rfc5545)
        super.init()
    }
    
    /// 构建
    /// - Parameter kind: Kind
    internal init(kind: Kind) {
        self.rawValue = icalcomponent_new(kind.rawValue)
        super.init()
    }
    
    deinit {
        if icalcomponent_get_parent(rawValue) == .none {
            icalcomponent_free(rawValue)
        }
        print(#function, (#file as NSString).lastPathComponent)
    }
   
}

extension Component {
    
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
        icalcomponent_find_all_properties(of: rawValue, kind: kind.rawValue).forEach {
            icalcomponent_remove_property(rawValue, $0)
        }
    }
    
    /// children of kind
    /// - Parameter kind: Component.Kind
    /// - Returns: Array<Component>
    public func children<T>(of kind: Component.Kind) -> Array<T> where T: Component {
        return icalcomponent_find_children(of: rawValue, kind: kind).compactMap { $0 as? T }
    }
    
    /// child of kind
    /// - Parameter kind: Component.Kind
    /// - Returns: Optional<Component>
    public func child<T>(of kind: Component.Kind) -> Optional<T> where T: Component {
        return icalcomponent_find_children(of: rawValue, kind: kind).first as? T
    }
    
    /// property by kind
    /// - Parameter kind: Property.Kind
    /// - Returns: Optional<Property>
    public func property(by kind: Property.Kind) -> Optional<Property> {
        if let first = icalcomponent_get_first_property(rawValue, kind.rawValue) {
            return .init(rawValue: first)
        } else {
            return .none
        }
    }
    
    /// rfc5545
    /// - Returns: String
    public func rfc5545() -> String {
        return .init(utf8String: icalcomponent_as_ical_string(rawValue)) ?? ""
    }
    
}
