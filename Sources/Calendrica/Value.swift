//
//  Value.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// Value
public class Value: NSObject {

    
    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalvalue_isa(rawValue)) }
    
    // MARK: - 私有属性
    
    /// icalvalue
    internal let rawValue: icalvalue
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalvalue
    internal init(rawValue: icalvalue) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameters:
    ///   - text: String
    ///   - kind: Kind
    public convenience init(text: String, kind: Kind) {
        self.init(rawValue: icalvalue_new_from_string(kind.rawValue, text))
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(rawValue: icalvalue_new(kind.rawValue))
    }
    
    deinit {
        if icalvalue_isa(rawValue) != ICAL_NO_VALUE {
            icalvalue_free(rawValue)
        }
    }
}

