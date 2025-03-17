//
//  URL+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import Foundation
import libical

extension URL: CompatibleValue {}
extension CompatibleWrapper where Base == URL {
    
    /// from icalattach
    /// - Parameter icalattach: icalattach
    /// - Returns: Optional<URL>
    internal static func from(_ icalattach: icalattach) -> Optional<URL> {
        guard icalattach_get_is_url(icalattach) > 0 else { return .none }
        return .init(string: icalattach_get_url(icalattach).hub.wrap())
    }
    
    /// icalattach
    /// - Returns: icalattach
    internal func icalattach() -> icalattach {
        return icalattach_new_from_url(base.absoluteString)
    }
}
