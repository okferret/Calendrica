//
//  Value.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// Value
public class Value: NSObject {
    /// Wrap<icalvalue_kind>
    public typealias Kind = Wrap<icalvalue_kind>
    
    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalvalue_isa(rawValue)) }
    
    // MARK: - 私有属性
    
    /// icalvalue
    internal let rawValue: icalvalue
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalvalue
    internal init(rawValue: icalvalue) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameters:
    ///   - text: String
    ///   - kind: Kind
    public convenience init(text: String, kind: Kind) {
        self.init(rawValue: icalvalue_new_from_string(kind.rawValue, text))
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(rawValue: icalvalue_new(kind.rawValue))
    }
    
    deinit {
        if icalvalue_isa(rawValue) != ICAL_NO_VALUE {
            icalvalue_free(rawValue)
        }
    }
}

extension Value.Kind {
    /// ICAL_ANY_VALUE
    public static var ANY: Value.Kind { .init(rawValue: ICAL_ANY_VALUE) }
    /// ICAL_ACTION_VALUE
    public static var ACTION: Value.Kind { .init(rawValue: ICAL_ACTION_VALUE) }
    /// ICAL_ATTACH_VALUE
    public static var ATTACH: Value.Kind { .init(rawValue: ICAL_ATTACH_VALUE) }
    /// ICAL_BINARY_VALUE
    public static var BINARY: Value.Kind { .init(rawValue: ICAL_BINARY_VALUE) }
    /// ICAL_BOOLEAN_VALUE
    public static var BOOLEAN: Value.Kind { .init(rawValue: ICAL_BOOLEAN_VALUE) }
    /// ICAL_BUSYTYPE_VALUE
    public static var BUSYTYPE: Value.Kind { .init(rawValue: ICAL_BUSYTYPE_VALUE) }
    /// ICAL_CALADDRESS_VALUE
    public static var CALADDRESS: Value.Kind { .init(rawValue: ICAL_CALADDRESS_VALUE) }
    /// ICAL_CARLEVEL_VALUE
    public static var CARLEVEL: Value.Kind { .init(rawValue: ICAL_CARLEVEL_VALUE) }
    /// ICAL_CLASS_VALUE
    public static var CLASS: Value.Kind { .init(rawValue: ICAL_CLASS_VALUE) }
    /// ICAL_CMD_VALUE
    public static var CMD: Value.Kind { .init(rawValue: ICAL_CMD_VALUE) }
    /// ICAL_DATE_VALUE
    public static var DATE: Value.Kind { .init(rawValue: ICAL_DATE_VALUE) }
    /// ICAL_DATETIME_VALUE
    public static var DATETIME: Value.Kind { .init(rawValue: ICAL_DATETIME_VALUE) }
    /// ICAL_DATETIMEDATE_VALUE
    public static var DATETIMEDATE: Value.Kind { .init(rawValue: ICAL_DATETIMEDATE_VALUE) }
    /// ICAL_DATETIMEPERIOD_VALUE
    public static var DATETIMEPERIOD: Value.Kind { .init(rawValue: ICAL_DATETIMEPERIOD_VALUE) }
    /// ICAL_DURATION_VALUE
    public static var DURATION: Value.Kind { .init(rawValue: ICAL_DURATION_VALUE) }
    /// ICAL_FLOAT_VALUE
    public static var FLOAT: Value.Kind { .init(rawValue: ICAL_FLOAT_VALUE) }
    /// ICAL_GEO_VALUE
    public static var GEO: Value.Kind { .init(rawValue: ICAL_GEO_VALUE) }
    /// ICAL_INTEGER_VALUE
    public static var INTEGER: Value.Kind { .init(rawValue: ICAL_INTEGER_VALUE) }
    /// ICAL_METHOD_VALUE
    public static var METHOD: Value.Kind { .init(rawValue: ICAL_METHOD_VALUE) }
    /// ICAL_PERIOD_VALUE
    public static var PERIOD: Value.Kind { .init(rawValue: ICAL_PERIOD_VALUE) }
    /// ICAL_POLLCOMPLETION_VALUE
    public static var POLLCOMPLETION: Value.Kind { .init(rawValue: ICAL_POLLCOMPLETION_VALUE) }
    /// ICAL_POLLMODE_VALUE
    public static var POLLMODE: Value.Kind { .init(rawValue: ICAL_POLLMODE_VALUE) }
    /// ICAL_QUERY_VALUE
    public static var QUERY: Value.Kind { .init(rawValue: ICAL_QUERY_VALUE) }
    /// ICAL_QUERYLEVEL_VALUE
    public static var QUERYLEVEL: Value.Kind { .init(rawValue: ICAL_QUERYLEVEL_VALUE) }
    /// ICAL_RECUR_VALUE
    public static var RECUR: Value.Kind { .init(rawValue: ICAL_RECUR_VALUE) }
    /// ICAL_REQUESTSTATUS_VALUE
    public static var REQUESTSTATUS: Value.Kind { .init(rawValue: ICAL_REQUESTSTATUS_VALUE) }
    /// ICAL_STATUS_VALUE
    public static var STATUS: Value.Kind { .init(rawValue: ICAL_STATUS_VALUE) }
    /// ICAL_STRING_VALUE
    public static var STRING: Value.Kind { .init(rawValue: ICAL_STRING_VALUE) }
    /// ICAL_TASKMODE_VALUE
    public static var TASKMODE: Value.Kind { .init(rawValue: ICAL_TASKMODE_VALUE) }
    /// ICAL_TEXT_VALUE
    public static var TEXT: Value.Kind { .init(rawValue: ICAL_TEXT_VALUE) }
    /// ICAL_TRANSP_VALUE
    public static var TRANSP: Value.Kind { .init(rawValue: ICAL_TRANSP_VALUE) }
    /// ICAL_TRIGGER_VALUE
    public static var TRIGGER: Value.Kind { .init(rawValue: ICAL_TRIGGER_VALUE) }
    /// ICAL_URI_VALUE
    public static var URI: Value.Kind { .init(rawValue: ICAL_URI_VALUE) }
    /// ICAL_UTCOFFSET_VALUE
    public static var UTCOFFSET: Value.Kind { .init(rawValue: ICAL_UTCOFFSET_VALUE) }
    /// ICAL_X_VALUE
    public static var X: Value.Kind { .init(rawValue: ICAL_X_VALUE) }
    /// ICAL_XLICCLASS_VALUE
    public static var XLICCLASS: Value.Kind { .init(rawValue: ICAL_XLICCLASS_VALUE) }

}
