//
//  String+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import Foundation

extension String: CompatibleValue {}
extension CompatibleWrapper where Base == String {
    
    /// toURL
    /// - Returns: Optional<URL>
    internal func toURL() -> Optional<URL> {
        return .init(string: base)
    }
}
