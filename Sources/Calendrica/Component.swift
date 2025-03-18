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
        return icalcomponent_find_all_components(of: rawValue).map { .init(rawValue: $0) }
    }
    
    /// Array<Property>
    public var properties: Array<Property> {
        return icalcomponent_find_all_properties(of: rawValue).map { .init(rawValue: $0) }
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
    public convenience init(rfc5545: String) {
        self.init(rawValue: icalcomponent_new_from_string(rfc5545))
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(rawValue: icalcomponent_new(kind.rawValue))
    }
    
    deinit {
        if icalcomponent_isa(rawValue) != ICAL_NO_COMPONENT {
            icalcomponent_free(rawValue)
        }
    }
}

extension Component {
    
    /// add child
    /// - Parameter child: Component
    public func add(_ child: Component) {
        icalcomponent_add_component(rawValue, child.rawValue)
    }
    
    /// remove child
    /// - Parameter child: Component
    public func remove(_ child: Component) {
        icalcomponent_remove_component(rawValue, child.rawValue)
    }
    
    /// add property
    /// - Parameter property: Property
    public func add(_ property: Property) {
        icalcomponent_add_property(rawValue, property.rawValue)
    }
     
    /// remove property
    /// - Parameter property: Property
    public func remove(_ property: Property) {
        icalcomponent_remove_property(rawValue, property.rawValue)
    }
    
    /// rfc5545
    /// - Returns: String
    public func rfc5545() -> String {
        return .init(utf8String: icalcomponent_as_ical_string(rawValue)) ?? ""
    }
    
    /// count
    /// - Parameter kind: Component.Kind
    /// - Returns: Int
    public func count(of kind: Component.Kind) -> Int {
        return icalcomponent_count_components(rawValue, kind.rawValue).hub.wrap()
    }
    
    /// count of
    /// - Parameter kind: Property.Kind
    /// - Returns: Int
    public func count(of kind: Property.Kind) -> Int {
        return icalcomponent_count_properties(rawValue, kind.rawValue).hub.wrap()
    }
}

extension Component {

    
}
