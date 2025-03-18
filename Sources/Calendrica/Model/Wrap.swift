//
//  Wrap.swift
//  Calendrica
//
//  Created by okferret on 2025/3/18.
//

import libical
import Foundation

/// Wrap
public struct Wrap<T>: Hashable where T: RawRepresentable, T: Hashable {
    internal let rawValue: T
    internal init(rawValue: T) {
        self.rawValue = rawValue
    }
}

extension Wrap: CustomStringConvertible {
    
    /// String
    public var description: String {
        switch rawValue {
        case _ where rawValue is icalcomponent_kind:
#warning("完善描述内容")
            return "完善描述内容"
        default: return "完善描述内容"
        }
    }
    
}
