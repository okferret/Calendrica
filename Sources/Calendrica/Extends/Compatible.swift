//
//  Compatible.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import Foundation

/// CompatibleWrapper
struct CompatibleWrapper<Base> {
    
    /// Base
    internal let base: Base
    
    /// 构建
    /// - Parameter base: Base
    internal init(base: Base) {
        self.base = base
    }
}

/// Compatible
protocol Compatible: AnyObject {}
extension Compatible {
    
    /// CompatibleWrapper<Self>
    internal var hub: CompatibleWrapper<Self> {
        get { .init(base: self) }
        set { }
    }
    
    /// CompatibleWrapper<Self>.Type
    internal static var hub: CompatibleWrapper<Self>.Type {
        get { CompatibleWrapper<Self>.self }
        set { }
    }
}

/// CompatibleValue
protocol CompatibleValue {}
extension CompatibleValue {
    
    /// CompatibleWrapper<Self>
    internal var hub: CompatibleWrapper<Self> {
        get { .init(base: self) }
        set { }
    }
    
    /// CompatibleWrapper<Self>.Type
    internal static var hub: CompatibleWrapper<Self>.Type {
        get { CompatibleWrapper<Self>.self }
        set { }
    }
}
