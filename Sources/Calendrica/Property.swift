//
//  Property.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// Property
public class Property: NSObject {

    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalproperty_isa(rawValue)) }
    
    // MARK: - 私有属性
    
    /// icalproperty
    internal let rawValue: icalproperty
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalproperty
    internal init(rawValue: icalproperty) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) {
        self.init(rawValue: icalproperty_new_from_string(rfc5545))
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(rawValue: icalproperty_new(kind.rawValue))
    }
    
    deinit {
        if icalproperty_isa(rawValue) != ICAL_NO_PROPERTY {
            icalproperty_free(rawValue)
        }
    }
}

extension Property {
    
    /// add
    /// - Parameter parameter: Parameter
    public func add(_ parameter: Parameter) {
        icalproperty_add_parameter(rawValue, parameter.rawValue)
    }
    
    /// remove
    /// - Parameter parameter: Parameter
    public func remove(_ parameter: Parameter) {
        icalproperty_remove_parameter_by_ref(rawValue, parameter.rawValue)
    }
    
    /// remove by kind
    /// - Parameter kind: Parameter.Kind
    public func remove(by kind: Parameter.Kind) {
        icalproperty_remove_parameter_by_kind(rawValue, kind.rawValue)
    }
    
    /// remove parameter by name
    /// - Parameter name: String
    public func remove(by name: String) {
        icalproperty_remove_parameter_by_name(rawValue, name)
    }
    
    /// rfc5545
    /// - Returns: String
    public func rfc5545() -> String {
        return .init(utf8String: icalproperty_as_ical_string(rawValue)) ?? ""
    }
}

