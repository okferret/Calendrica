//
//  Parameter.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// Parameter
public class Parameter: NSObject {
 
    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalparameter_isa(rawValue)) }
    
    // MARK: - 私有属性
    
    /// icalparameter
    internal let rawValue: icalparameter
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalparameter
    internal init(rawValue: icalparameter) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) {
        self.init(rawValue: icalparameter_new_from_string(rfc5545))
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(rawValue: icalparameter_new(kind.rawValue))
    }
    
    deinit {
        if icalparameter_isa(rawValue) != ICAL_NO_PARAMETER {
            icalparameter_free(rawValue)
        }
    }
}

extension Parameter {

}

