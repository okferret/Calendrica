//
//  VReply.swift
//  Calendrica
//
//  Created by okferret on 2025/3/18.
//

import Foundation
import libical

public class VReply: Component {

    // MARK: - 生命周期
    
    /// 构建
    public convenience init() {
        self.init(kind: .VREPLY)
    }
    
    /// 构建
    /// - Parameter rawValue: icalcomponent
    internal override init(rawValue: icalcomponent) {
        super.init(rawValue: rawValue)
    }
    
    /// 构建
    /// - Parameter kind: Component.Kind
    private override init(kind: Component.Kind) {
        super.init(kind: kind)
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    private override init(rfc5545: String) {
        super.init(rfc5545: rfc5545)
    }
    
}
