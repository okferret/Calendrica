//
//  UnsafePointer+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical

extension UnsafePointer: CompatibleValue {}
extension CompatibleWrapper where Base == UnsafePointer<CChar> {
    
    /// wrap
    /// - Returns: String
    internal func wrap() -> String {
        return .init(cString: base)
    }
}


extension UnsafeMutablePointer: CompatibleValue {}
extension CompatibleWrapper where Base == UnsafeMutablePointer<CChar> {
    
    /// wrap
    /// - Returns: String
    internal func wrap() -> String {
        return .init(cString: base)
    }
}
