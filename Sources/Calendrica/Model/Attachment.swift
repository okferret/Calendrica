//
//  Attachment.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical

/// Attachment
public class Attachment: NSObject {

    // MARK: - 公开属性
    
    /// Optional<URL>
    public var url: Optional<URL> { .hub.from(rawValue) }

    // MARK: - 私有属性
    
    /// icalattach
    internal let rawValue: icalattach
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalattach
    internal init(rawValue: icalattach) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameter url: URL
    public convenience init(url: URL) {
        self.init(rawValue: icalattach_new_from_url(url.absoluteString))
    }

}

extension Attachment: CompatibleValue {}
extension CompatibleWrapper where Base == Attachment {
    
    /// from icalattach
    /// - Parameter icalattach: icalattach
    /// - Returns: Optional<Attachment>
    internal static func from(_ icalattach: icalattach) -> Optional<Attachment> {
        guard icalattach_get_is_url(icalattach) > 0, let newURL: URL = .init(string: icalattach_get_url(icalattach).hub.wrap()) else { return .none }
        return .init(url: newURL)
    }
    
    internal func icalattach() -> Optional<icalattach> {
        guard let url = base.url else { return .none }
        return icalattach_new_from_url(url.absoluteString)
    }
}
