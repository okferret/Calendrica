//
//  CalError.swift
//  Calendrica
//
//  Created by okferret on 2025/3/18.
//

import Foundation

/// CalError
public enum CalError {
    case custom(_ text: String)
}

extension CalError: Error {
    
    /// String
    public var localizedDescription: String {
        switch self {
        case .custom(let text): return text
        }
    }
}
