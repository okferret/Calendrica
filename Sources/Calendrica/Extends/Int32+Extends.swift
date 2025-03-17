//
//  Int32+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import Foundation

extension Int32: CompatibleValue {}
extension CompatibleWrapper where Base == Int32 {
    
    /// wrap
    /// - Returns: Int
    internal func wrap() -> Int {
        return Int(base)
    }
}
