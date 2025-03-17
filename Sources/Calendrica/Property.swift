//
//  Property.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// Property
public class Property: NSObject {
    /// Wrap<icalproperty_kind>
    public typealias Kind = Wrap<icalproperty_kind>
    
    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalproperty_isa(rawValue)) }
    
    // MARK: - 私有属性
    
    /// icalproperty
    internal let rawValue: icalproperty
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalproperty
    internal init(rawValue: icalproperty) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) {
        self.init(rawValue: icalproperty_new_from_string(rfc5545))
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(rawValue: icalproperty_new(kind.rawValue))
    }
    
    deinit {
        if icalproperty_isa(rawValue) != ICAL_NO_PROPERTY {
            icalproperty_free(rawValue)
        }
    }
}

extension Property {
    
    /// add
    /// - Parameter parameter: Parameter
    public func add(_ parameter: Parameter) {
        icalproperty_add_parameter(rawValue, parameter.rawValue)
    }
    
    /// remove
    /// - Parameter parameter: Parameter
    public func remove(_ parameter: Parameter) {
        icalproperty_remove_parameter_by_ref(rawValue, parameter.rawValue)
    }
    
    /// remove by kind
    /// - Parameter kind: Parameter.Kind
    public func remove(by kind: Parameter.Kind) {
        icalproperty_remove_parameter_by_kind(rawValue, kind.rawValue)
    }
    
    /// remove parameter by name
    /// - Parameter name: String
    public func remove(by name: String) {
        icalproperty_remove_parameter_by_name(rawValue, name)
    }
    
    /// rfc5545
    /// - Returns: String
    public func rfc5545() -> String {
        return .init(utf8String: icalproperty_as_ical_string(rawValue)) ?? ""
    }
}

extension Property.Kind {
    /// ICAL_ANY_PROPERTY
    public static var ANY: Property.Kind { .init(rawValue: ICAL_ANY_PROPERTY) }
    /// ICAL_ACCEPTRESPONSE_PROPERTY
    public static var ACCEPTRESPONSE: Property.Kind { .init(rawValue: ICAL_ACCEPTRESPONSE_PROPERTY) }
    /// ICAL_ACKNOWLEDGED_PROPERTY
    public static var ACKNOWLEDGED: Property.Kind { .init(rawValue: ICAL_ACKNOWLEDGED_PROPERTY) }
    /// ICAL_ACTION_PROPERTY
    public static var ACTION: Property.Kind { .init(rawValue: ICAL_ACTION_PROPERTY) }
    /// ICAL_ALLOWCONFLICT_PROPERTY
    public static var ALLOWCONFLICT: Property.Kind { .init(rawValue: ICAL_ALLOWCONFLICT_PROPERTY) }
    /// ICAL_ATTACH_PROPERTY
    public static var ATTACH: Property.Kind { .init(rawValue: ICAL_ATTACH_PROPERTY) }
    /// ICAL_ATTENDEE_PROPERTY
    public static var ATTENDEE: Property.Kind { .init(rawValue: ICAL_ATTENDEE_PROPERTY) }
    /// ICAL_BUSYTYPE_PROPERTY
    public static var BUSYTYPE: Property.Kind { .init(rawValue: ICAL_BUSYTYPE_PROPERTY) }
    /// ICAL_CALID_PROPERTY
    public static var CALID: Property.Kind { .init(rawValue: ICAL_CALID_PROPERTY) }
    /// ICAL_CALMASTER_PROPERTY
    public static var CALMASTER: Property.Kind { .init(rawValue: ICAL_CALMASTER_PROPERTY) }
    /// ICAL_CALSCALE_PROPERTY
    public static var CALSCALE: Property.Kind { .init(rawValue: ICAL_CALSCALE_PROPERTY) }
    /// ICAL_CAPVERSION_PROPERTY
    public static var CAPVERSION: Property.Kind { .init(rawValue: ICAL_CAPVERSION_PROPERTY) }
    /// ICAL_CARLEVEL_PROPERTY
    public static var CARLEVEL: Property.Kind { .init(rawValue: ICAL_CARLEVEL_PROPERTY) }
    /// ICAL_CARID_PROPERTY
    public static var CARID: Property.Kind { .init(rawValue: ICAL_CARID_PROPERTY) }
    /// ICAL_CATEGORIES_PROPERTY
    public static var CATEGORIES: Property.Kind { .init(rawValue: ICAL_CATEGORIES_PROPERTY) }
    /// ICAL_CLASS_PROPERTY
    public static var CLASS: Property.Kind { .init(rawValue: ICAL_CLASS_PROPERTY) }
    /// ICAL_CMD_PROPERTY
    public static var CMD: Property.Kind { .init(rawValue: ICAL_CMD_PROPERTY) }
    /// ICAL_COLOR_PROPERTY
    public static var COLOR: Property.Kind { .init(rawValue: ICAL_COLOR_PROPERTY) }
    /// ICAL_COMMENT_PROPERTY
    public static var COMMENT: Property.Kind { .init(rawValue: ICAL_COMMENT_PROPERTY) }
    /// ICAL_COMPLETED_PROPERTY
    public static var COMPLETED: Property.Kind { .init(rawValue: ICAL_COMPLETED_PROPERTY) }
    /// ICAL_COMPONENTS_PROPERTY
    public static var COMPONENTS: Property.Kind { .init(rawValue: ICAL_COMPONENTS_PROPERTY) }
    /// ICAL_CONFERENCE_PROPERTY
    public static var CONFERENCE: Property.Kind { .init(rawValue: ICAL_CONFERENCE_PROPERTY) }
    /// ICAL_CONTACT_PROPERTY
    public static var CONTACT: Property.Kind { .init(rawValue: ICAL_CONTACT_PROPERTY) }
    /// ICAL_CREATED_PROPERTY
    public static var CREATED: Property.Kind { .init(rawValue: ICAL_CREATED_PROPERTY) }
    /// ICAL_CSID_PROPERTY
    public static var CSID: Property.Kind { .init(rawValue: ICAL_CSID_PROPERTY) }
    /// ICAL_DATEMAX_PROPERTY
    public static var DATEMAX: Property.Kind { .init(rawValue: ICAL_DATEMAX_PROPERTY) }
    /// ICAL_DATEMIN_PROPERTY
    public static var DATEMIN: Property.Kind { .init(rawValue: ICAL_DATEMIN_PROPERTY) }
    /// ICAL_DECREED_PROPERTY
    public static var DECREED: Property.Kind { .init(rawValue: ICAL_DECREED_PROPERTY) }
    /// ICAL_DEFAULTCHARSET_PROPERTY
    public static var DEFAULTCHARSET: Property.Kind { .init(rawValue: ICAL_DEFAULTCHARSET_PROPERTY) }
    /// ICAL_DEFAULTLOCALE_PROPERTY
    public static var DEFAULTLOCALE: Property.Kind { .init(rawValue: ICAL_DEFAULTLOCALE_PROPERTY) }
    /// ICAL_DEFAULTTZID_PROPERTY
    public static var DEFAULTTZID: Property.Kind { .init(rawValue: ICAL_DEFAULTTZID_PROPERTY) }
    /// ICAL_DEFAULTVCARS_PROPERTY
    public static var DEFAULTVCARS: Property.Kind { .init(rawValue: ICAL_DEFAULTVCARS_PROPERTY) }
    /// ICAL_DENY_PROPERTY
    public static var DENY: Property.Kind { .init(rawValue: ICAL_DENY_PROPERTY) }
    /// ICAL_DESCRIPTION_PROPERTY
    public static var DESCRIPTION: Property.Kind { .init(rawValue: ICAL_DESCRIPTION_PROPERTY) }
    /// ICAL_DTEND_PROPERTY
    public static var DTEND: Property.Kind { .init(rawValue: ICAL_DTEND_PROPERTY) }
    /// ICAL_DTSTAMP_PROPERTY
    public static var DTSTAMP: Property.Kind { .init(rawValue: ICAL_DTSTAMP_PROPERTY) }
    /// ICAL_DTSTART_PROPERTY
    public static var DTSTART: Property.Kind { .init(rawValue: ICAL_DTSTART_PROPERTY) }
    /// ICAL_DUE_PROPERTY
    public static var DUE: Property.Kind { .init(rawValue: ICAL_DUE_PROPERTY) }
    /// ICAL_DURATION_PROPERTY
    public static var DURATION: Property.Kind { .init(rawValue: ICAL_DURATION_PROPERTY) }
    /// ICAL_ESTIMATEDDURATION_PROPERTY
    public static var ESTIMATEDDURATION: Property.Kind { .init(rawValue: ICAL_ESTIMATEDDURATION_PROPERTY) }
    /// ICAL_EXDATE_PROPERTY
    public static var EXDATE: Property.Kind { .init(rawValue: ICAL_EXDATE_PROPERTY) }
    /// ICAL_EXPAND_PROPERTY
    public static var EXPAND: Property.Kind { .init(rawValue: ICAL_EXPAND_PROPERTY) }
    /// ICAL_EXRULE_PROPERTY
    public static var EXRULE: Property.Kind { .init(rawValue: ICAL_EXRULE_PROPERTY) }
    /// ICAL_FREEBUSY_PROPERTY
    public static var FREEBUSY: Property.Kind { .init(rawValue: ICAL_FREEBUSY_PROPERTY) }
    /// ICAL_GEO_PROPERTY
    public static var GEO: Property.Kind { .init(rawValue: ICAL_GEO_PROPERTY) }
    /// ICAL_GRANT_PROPERTY
    public static var GRANT: Property.Kind { .init(rawValue: ICAL_GRANT_PROPERTY) }
    /// ICAL_IMAGE_PROPERTY 
    public static var IMAGE : Property.Kind { .init(rawValue: ICAL_IMAGE_PROPERTY ) }
    /// ICAL_ITIPVERSION_PROPERTY
    public static var ITIPVERSION: Property.Kind { .init(rawValue: ICAL_ITIPVERSION_PROPERTY) }
    /// ICAL_LASTMODIFIED_PROPERTY
    public static var LASTMODIFIED: Property.Kind { .init(rawValue: ICAL_LASTMODIFIED_PROPERTY) }
    /// ICAL_LOCATION_PROPERTY
    public static var LOCATION: Property.Kind { .init(rawValue: ICAL_LOCATION_PROPERTY) }
    /// ICAL_MAXCOMPONENTSIZE_PROPERTY
    public static var MAXCOMPONENTSIZE: Property.Kind { .init(rawValue: ICAL_MAXCOMPONENTSIZE_PROPERTY) }
    /// ICAL_MAXDATE_PROPERTY
    public static var MAXDATE: Property.Kind { .init(rawValue: ICAL_MAXDATE_PROPERTY) }
    /// ICAL_MAXRESULTS_PROPERTY
    public static var MAXRESULTS: Property.Kind { .init(rawValue: ICAL_MAXRESULTS_PROPERTY) }
    /// ICAL_MAXRESULTSSIZE_PROPERTY
    public static var MAXRESULTSSIZE: Property.Kind { .init(rawValue: ICAL_MAXRESULTSSIZE_PROPERTY) }
    /// ICAL_METHOD_PROPERTY
    public static var METHOD: Property.Kind { .init(rawValue: ICAL_METHOD_PROPERTY) }
    /// ICAL_MINDATE_PROPERTY
    public static var MINDATE: Property.Kind { .init(rawValue: ICAL_MINDATE_PROPERTY) }
    /// ICAL_MULTIPART_PROPERTY
    public static var MULTIPART: Property.Kind { .init(rawValue: ICAL_MULTIPART_PROPERTY) }
    /// ICAL_NAME_PROPERTY 
    public static var NAME : Property.Kind { .init(rawValue: ICAL_NAME_PROPERTY ) }
    /// ICAL_ORGANIZER_PROPERTY
    public static var ORGANIZER: Property.Kind { .init(rawValue: ICAL_ORGANIZER_PROPERTY) }
    /// ICAL_OWNER_PROPERTY
    public static var OWNER: Property.Kind { .init(rawValue: ICAL_OWNER_PROPERTY) }
    /// ICAL_PATCHDELETE_PROPERTY
    public static var PATCHDELETE: Property.Kind { .init(rawValue: ICAL_PATCHDELETE_PROPERTY) }
    /// ICAL_PATCHORDER_PROPERTY
    public static var PATCHORDER: Property.Kind { .init(rawValue: ICAL_PATCHORDER_PROPERTY) }
    /// ICAL_PATCHPARAMETER_PROPERTY
    public static var PATCHPARAMETER: Property.Kind { .init(rawValue: ICAL_PATCHPARAMETER_PROPERTY) }
    /// ICAL_PATCHTARGET_PROPERTY
    public static var PATCHTARGET: Property.Kind { .init(rawValue: ICAL_PATCHTARGET_PROPERTY) }
    /// ICAL_PATCHVERSION_PROPERTY
    public static var PATCHVERSION: Property.Kind { .init(rawValue: ICAL_PATCHVERSION_PROPERTY) }
    /// ICAL_PERCENTCOMPLETE_PROPERTY
    public static var PERCENTCOMPLETE: Property.Kind { .init(rawValue: ICAL_PERCENTCOMPLETE_PROPERTY) }
    /// ICAL_PERMISSION_PROPERTY
    public static var PERMISSION: Property.Kind { .init(rawValue: ICAL_PERMISSION_PROPERTY) }
    /// ICAL_POLLCOMPLETION_PROPERTY
    public static var POLLCOMPLETION: Property.Kind { .init(rawValue: ICAL_POLLCOMPLETION_PROPERTY) }
    /// ICAL_POLLITEMID_PROPERTY
    public static var POLLITEMID: Property.Kind { .init(rawValue: ICAL_POLLITEMID_PROPERTY) }
    /// ICAL_POLLMODE_PROPERTY
    public static var POLLMODE: Property.Kind { .init(rawValue: ICAL_POLLMODE_PROPERTY) }
    /// ICAL_POLLPROPERTIES_PROPERTY
    public static var POLLPROPERTIES: Property.Kind { .init(rawValue: ICAL_POLLPROPERTIES_PROPERTY) }
    /// ICAL_POLLWINNER_PROPERTY
    public static var POLLWINNER: Property.Kind { .init(rawValue: ICAL_POLLWINNER_PROPERTY) }
    /// ICAL_PRIORITY_PROPERTY
    public static var PRIORITY: Property.Kind { .init(rawValue: ICAL_PRIORITY_PROPERTY) }
    /// ICAL_PRODID_PROPERTY
    public static var PRODID: Property.Kind { .init(rawValue: ICAL_PRODID_PROPERTY) }
    /// ICAL_QUERY_PROPERTY
    public static var QUERY: Property.Kind { .init(rawValue: ICAL_QUERY_PROPERTY) }
    /// ICAL_QUERYLEVEL_PROPERTY
    public static var QUERYLEVEL: Property.Kind { .init(rawValue: ICAL_QUERYLEVEL_PROPERTY) }
    /// ICAL_QUERYID_PROPERTY
    public static var QUERYID: Property.Kind { .init(rawValue: ICAL_QUERYID_PROPERTY) }
    /// ICAL_QUERYNAME_PROPERTY
    public static var QUERYNAME: Property.Kind { .init(rawValue: ICAL_QUERYNAME_PROPERTY) }
    /// ICAL_RDATE_PROPERTY
    public static var RDATE: Property.Kind { .init(rawValue: ICAL_RDATE_PROPERTY) }
    /// ICAL_RECURACCEPTED_PROPERTY
    public static var RECURACCEPTED: Property.Kind { .init(rawValue: ICAL_RECURACCEPTED_PROPERTY) }
    /// ICAL_RECUREXPAND_PROPERTY
    public static var RECUREXPAND: Property.Kind { .init(rawValue: ICAL_RECUREXPAND_PROPERTY) }
    /// ICAL_RECURLIMIT_PROPERTY
    public static var RECURLIMIT: Property.Kind { .init(rawValue: ICAL_RECURLIMIT_PROPERTY) }
    /// ICAL_RECURRENCEID_PROPERTY
    public static var RECURRENCEID: Property.Kind { .init(rawValue: ICAL_RECURRENCEID_PROPERTY) }
    /// ICAL_REFRESHINTERVAL_PROPERTY
    public static var REFRESHINTERVAL: Property.Kind { .init(rawValue: ICAL_REFRESHINTERVAL_PROPERTY) }
    /// ICAL_RELATEDTO_PROPERTY
    public static var RELATEDTO: Property.Kind { .init(rawValue: ICAL_RELATEDTO_PROPERTY) }
    /// ICAL_RELCALID_PROPERTY
    public static var RELCALID: Property.Kind { .init(rawValue: ICAL_RELCALID_PROPERTY) }
    /// ICAL_REPEAT_PROPERTY
    public static var REPEAT: Property.Kind { .init(rawValue: ICAL_REPEAT_PROPERTY) }
    /// ICAL_REPLYURL_PROPERTY 
    public static var REPLYURL : Property.Kind { .init(rawValue: ICAL_REPLYURL_PROPERTY ) }
    /// ICAL_REQUESTSTATUS_PROPERTY
    public static var REQUESTSTATUS: Property.Kind { .init(rawValue: ICAL_REQUESTSTATUS_PROPERTY) }
    /// ICAL_RESOURCES_PROPERTY
    public static var RESOURCES: Property.Kind { .init(rawValue: ICAL_RESOURCES_PROPERTY) }
    /// ICAL_RESPONSE_PROPERTY
    public static var RESPONSE: Property.Kind { .init(rawValue: ICAL_RESPONSE_PROPERTY) }
    /// ICAL_RESTRICTION_PROPERTY
    public static var RESTRICTION: Property.Kind { .init(rawValue: ICAL_RESTRICTION_PROPERTY) }
    /// ICAL_RRULE_PROPERTY
    public static var RRULE: Property.Kind { .init(rawValue: ICAL_RRULE_PROPERTY) }
    /// ICAL_SCOPE_PROPERTY
    public static var SCOPE: Property.Kind { .init(rawValue: ICAL_SCOPE_PROPERTY) }
    /// ICAL_SEQUENCE_PROPERTY
    public static var SEQUENCE: Property.Kind { .init(rawValue: ICAL_SEQUENCE_PROPERTY) }
    /// ICAL_SOURCE_PROPERTY
    public static var SOURCE: Property.Kind { .init(rawValue: ICAL_SOURCE_PROPERTY) }
    /// ICAL_STATUS_PROPERTY
    public static var STATUS: Property.Kind { .init(rawValue: ICAL_STATUS_PROPERTY) }
    /// ICAL_STORESEXPANDED_PROPERTY
    public static var STORESEXPANDED: Property.Kind { .init(rawValue: ICAL_STORESEXPANDED_PROPERTY) }
    /// ICAL_SUMMARY_PROPERTY
    public static var SUMMARY: Property.Kind { .init(rawValue: ICAL_SUMMARY_PROPERTY) }
    /// ICAL_TARGET_PROPERTY
    public static var TARGET: Property.Kind { .init(rawValue: ICAL_TARGET_PROPERTY) }
    /// ICAL_TASKMODE_PROPERTY
    public static var TASKMODE: Property.Kind { .init(rawValue: ICAL_TASKMODE_PROPERTY) }
    /// ICAL_TRANSP_PROPERTY
    public static var TRANSP: Property.Kind { .init(rawValue: ICAL_TRANSP_PROPERTY) }
    /// ICAL_TRIGGER_PROPERTY
    public static var TRIGGER: Property.Kind { .init(rawValue: ICAL_TRIGGER_PROPERTY) }
    /// ICAL_TZID_PROPERTY
    public static var TZID: Property.Kind { .init(rawValue: ICAL_TZID_PROPERTY) }
    /// ICAL_TZIDALIASOF_PROPERTY 
    public static var TZIDALIASOF : Property.Kind { .init(rawValue: ICAL_TZIDALIASOF_PROPERTY ) }
    /// ICAL_TZNAME_PROPERTY
    public static var TZNAME: Property.Kind { .init(rawValue: ICAL_TZNAME_PROPERTY) }
    /// ICAL_TZOFFSETFROM_PROPERTY
    public static var TZOFFSETFROM: Property.Kind { .init(rawValue: ICAL_TZOFFSETFROM_PROPERTY) }
    /// ICAL_TZOFFSETTO_PROPERTY
    public static var TZOFFSETTO: Property.Kind { .init(rawValue: ICAL_TZOFFSETTO_PROPERTY) }
    /// ICAL_TZUNTIL_PROPERTY
    public static var TZUNTIL: Property.Kind { .init(rawValue: ICAL_TZUNTIL_PROPERTY) }
    /// ICAL_TZURL_PROPERTY
    public static var TZURL: Property.Kind { .init(rawValue: ICAL_TZURL_PROPERTY) }
    /// ICAL_UID_PROPERTY
    public static var UID: Property.Kind { .init(rawValue: ICAL_UID_PROPERTY) }
    /// ICAL_URL_PROPERTY
    public static var URL: Property.Kind { .init(rawValue: ICAL_URL_PROPERTY) }
    /// ICAL_VERSION_PROPERTY
    public static var VERSION: Property.Kind { .init(rawValue: ICAL_VERSION_PROPERTY) }
    /// ICAL_VOTER_PROPERTY
    public static var VOTER: Property.Kind { .init(rawValue: ICAL_VOTER_PROPERTY) }
    /// ICAL_X_PROPERTY
    public static var X: Property.Kind { .init(rawValue: ICAL_X_PROPERTY) }
    /// ICAL_XLICCLASS_PROPERTY
    public static var XLICCLASS: Property.Kind { .init(rawValue: ICAL_XLICCLASS_PROPERTY) }
    /// ICAL_XLICCLUSTERCOUNT_PROPERTY
    public static var XLICCLUSTERCOUNT: Property.Kind { .init(rawValue: ICAL_XLICCLUSTERCOUNT_PROPERTY) }
    /// ICAL_XLICERROR_PROPERTY
    public static var XLICERROR: Property.Kind { .init(rawValue: ICAL_XLICERROR_PROPERTY) }
    /// ICAL_XLICMIMECHARSET_PROPERTY
    public static var XLICMIMECHARSET: Property.Kind { .init(rawValue: ICAL_XLICMIMECHARSET_PROPERTY) }
    /// ICAL_XLICMIMECID_PROPERTY
    public static var XLICMIMECID: Property.Kind { .init(rawValue: ICAL_XLICMIMECID_PROPERTY) }
    /// ICAL_XLICMIMECONTENTTYPE_PROPERTY
    public static var XLICMIMECONTENTTYPE: Property.Kind { .init(rawValue: ICAL_XLICMIMECONTENTTYPE_PROPERTY) }
    /// ICAL_XLICMIMEENCODING_PROPERTY
    public static var XLICMIMEENCODING: Property.Kind { .init(rawValue: ICAL_XLICMIMEENCODING_PROPERTY) }
    /// ICAL_XLICMIMEFILENAME_PROPERTY
    public static var XLICMIMEFILENAME: Property.Kind { .init(rawValue: ICAL_XLICMIMEFILENAME_PROPERTY) }
    /// ICAL_XLICMIMEOPTINFO_PROPERTY
    public static var XLICMIMEOPTINFO: Property.Kind { .init(rawValue: ICAL_XLICMIMEOPTINFO_PROPERTY) }
}
