//
//  Property+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import Foundation
import libical

extension Property {
    /// Wrap<icalproperty_kind>
    public typealias Kind = Wrap<icalproperty_kind>
    /// Wrap<icalproperty_action>
    public typealias Action = Wrap<icalproperty_action>
    /// Wrap<icalproperty_busytype>
    public typealias BusyType = Wrap<icalproperty_busytype>
    /// Wrap<icalproperty_carlevel>
    public typealias CarLevel = Wrap<icalproperty_carlevel>
    /// Wrap<icalproperty_class>
    public typealias Class = Wrap<icalproperty_class>
    /// Wrap<icalproperty_cmd>
    public typealias Command = Wrap<icalproperty_cmd>
    /// Wrap<icalproperty_method>
    public typealias Method = Wrap<icalproperty_method>
    /// Wrap<icalproperty_pollcompletion>
    public typealias PollCompletion = Wrap<icalproperty_pollcompletion>
    /// Wrap<icalproperty_pollmode>
    public typealias PollMode = Wrap<icalproperty_pollmode>
    /// Wrap<icalproperty_querylevel>
    public typealias QueryLevel = Wrap<icalproperty_querylevel>
    /// Wrap<icalproperty_status>
    public typealias Status = Wrap<icalproperty_status>
    /// Wrap<icalproperty_taskmode>
    public typealias TaskMode = Wrap<icalproperty_taskmode>
    /// Wrap<icalproperty_transp>
    public typealias Transp = Wrap<icalproperty_transp>
    /// Wrap<icalproperty_xlicclass>
    public typealias XlicClass = Wrap<icalproperty_xlicclass>
}

extension Property.Kind {
    /// String
    public var name: String { rawValue.name }
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter name: String
    public init?(name: String) {
        if let kind: icalproperty_kind = .init(name: name) {
            self.init(rawValue: kind)
        } else {
            return nil
        }
    }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_kind = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
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

extension Property.Action {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_action = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.Action {
    /// ICAL_ACTION_X
    public static var X: Property.Action { .init(rawValue: ICAL_ACTION_X) }
    /// ICAL_ACTION_AUDIO
    public static var AUDIO: Property.Action { .init(rawValue: ICAL_ACTION_AUDIO) }
    /// ICAL_ACTION_DISPLAY
    public static var DISPLAY: Property.Action { .init(rawValue: ICAL_ACTION_DISPLAY) }
    /// ICAL_ACTION_EMAIL
    public static var EMAIL: Property.Action { .init(rawValue: ICAL_ACTION_EMAIL) }
    /// ICAL_ACTION_PROCEDURE
    public static var PROCEDURE: Property.Action { .init(rawValue: ICAL_ACTION_PROCEDURE) }
    /// ICAL_ACTION_NONE
    public static var NONE: Property.Action { .init(rawValue: ICAL_ACTION_NONE) }
}

extension Property.BusyType {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_busytype = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.BusyType {
    /// ICAL_BUSYTYPE_X
    public static var X: Property.BusyType { .init(rawValue: ICAL_BUSYTYPE_X) }
    /// ICAL_BUSYTYPE_BUSY
    public static var BUSY: Property.BusyType { .init(rawValue: ICAL_BUSYTYPE_BUSY) }
    /// ICAL_BUSYTYPE_BUSYUNAVAILABLE
    public static var BUSYUNAVAILABLE: Property.BusyType { .init(rawValue: ICAL_BUSYTYPE_BUSYUNAVAILABLE) }
    /// ICAL_BUSYTYPE_BUSYTENTATIVE
    public static var BUSYTENTATIVE: Property.BusyType { .init(rawValue: ICAL_BUSYTYPE_BUSYTENTATIVE) }
    /// ICAL_BUSYTYPE_NONE
    public static var NONE: Property.BusyType { .init(rawValue: ICAL_BUSYTYPE_NONE) }
}

extension Property.CarLevel {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_carlevel = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.CarLevel {
    /// ICAL_CARLEVEL_X
    public static var X: Property.CarLevel { .init(rawValue: ICAL_CARLEVEL_X) }
    /// ICAL_CARLEVEL_CARNONE
    public static var CARNONE: Property.CarLevel { .init(rawValue: ICAL_CARLEVEL_CARNONE) }
    /// ICAL_CARLEVEL_CARMIN
    public static var CARMIN: Property.CarLevel { .init(rawValue: ICAL_CARLEVEL_CARMIN) }
    /// ICAL_CARLEVEL_CARFULL1
    public static var CARFULL1: Property.CarLevel { .init(rawValue: ICAL_CARLEVEL_CARFULL1) }
    /// ICAL_CARLEVEL_NONE
    public static var NONE: Property.CarLevel { .init(rawValue: ICAL_CARLEVEL_NONE) }
}

extension Property.Class {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_class = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.Class {
    /// ICAL_CLASS_X
    public static var X: Property.Class { .init(rawValue: ICAL_CLASS_X) }
    /// ICAL_CLASS_PUBLIC
    public static var PUBLIC: Property.Class { .init(rawValue: ICAL_CLASS_PUBLIC) }
    /// ICAL_CLASS_PRIVATE
    public static var PRIVATE: Property.Class { .init(rawValue: ICAL_CLASS_PRIVATE) }
    /// ICAL_CLASS_CONFIDENTIAL
    public static var CONFIDENTIAL: Property.Class { .init(rawValue: ICAL_CLASS_CONFIDENTIAL) }
    /// ICAL_CLASS_NONE
    public static var NONE: Property.Class { .init(rawValue: ICAL_CLASS_NONE) }
}

extension Property.Command {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_cmd = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.Command {
    /// ICAL_CMD_X
    public static var X: Property.Command { .init(rawValue: ICAL_CMD_X) }
    /// ICAL_CMD_ABORT
    public static var ABORT: Property.Command { .init(rawValue: ICAL_CMD_ABORT) }
    /// ICAL_CMD_CONTINUE
    public static var CONTINUE: Property.Command { .init(rawValue: ICAL_CMD_CONTINUE) }
    /// ICAL_CMD_CREATE
    public static var CREATE: Property.Command { .init(rawValue: ICAL_CMD_CREATE) }
    /// ICAL_CMD_DELETE
    public static var DELETE: Property.Command { .init(rawValue: ICAL_CMD_DELETE) }
    /// ICAL_CMD_GENERATEUID
    public static var GENERATEUID: Property.Command { .init(rawValue: ICAL_CMD_GENERATEUID) }
    /// ICAL_CMD_GETCAPABILITY
    public static var GETCAPABILITY: Property.Command { .init(rawValue: ICAL_CMD_GETCAPABILITY) }
    /// ICAL_CMD_IDENTIFY
    public static var IDENTIFY: Property.Command { .init(rawValue: ICAL_CMD_IDENTIFY) }
    /// ICAL_CMD_MODIFY
    public static var MODIFY: Property.Command { .init(rawValue: ICAL_CMD_MODIFY) }
    /// ICAL_CMD_MOVE
    public static var MOVE: Property.Command { .init(rawValue: ICAL_CMD_MOVE) }
    /// ICAL_CMD_REPLY
    public static var REPLY: Property.Command { .init(rawValue: ICAL_CMD_REPLY) }
    /// ICAL_CMD_SEARCH
    public static var SEARCH: Property.Command { .init(rawValue: ICAL_CMD_SEARCH) }
    /// ICAL_CMD_SETLOCALE
    public static var SETLOCALE: Property.Command { .init(rawValue: ICAL_CMD_SETLOCALE) }
    /// ICAL_CMD_NONE
    public static var NONE: Property.Command { .init(rawValue: ICAL_CMD_NONE) }
}

extension Property.Method {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_method = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.Method {
    /// ICAL_METHOD_X
    public static var X: Property.Method { .init(rawValue: ICAL_METHOD_X) }
    /// ICAL_METHOD_PUBLISH
    public static var PUBLISH: Property.Method { .init(rawValue: ICAL_METHOD_PUBLISH) }
    /// ICAL_METHOD_REQUEST
    public static var REQUEST: Property.Method { .init(rawValue: ICAL_METHOD_REQUEST) }
    /// ICAL_METHOD_REPLY
    public static var REPLY: Property.Method { .init(rawValue: ICAL_METHOD_REPLY) }
    /// ICAL_METHOD_ADD
    public static var ADD: Property.Method { .init(rawValue: ICAL_METHOD_ADD) }
    /// ICAL_METHOD_CANCEL
    public static var CANCEL: Property.Method { .init(rawValue: ICAL_METHOD_CANCEL) }
    /// ICAL_METHOD_REFRESH
    public static var REFRESH: Property.Method { .init(rawValue: ICAL_METHOD_REFRESH) }
    /// ICAL_METHOD_COUNTER
    public static var COUNTER: Property.Method { .init(rawValue: ICAL_METHOD_COUNTER) }
    /// ICAL_METHOD_DECLINECOUNTER
    public static var DECLINECOUNTER: Property.Method { .init(rawValue: ICAL_METHOD_DECLINECOUNTER) }
    /// ICAL_METHOD_CREATE
    public static var CREATE: Property.Method { .init(rawValue: ICAL_METHOD_CREATE) }
    /// ICAL_METHOD_READ
    public static var READ: Property.Method { .init(rawValue: ICAL_METHOD_READ) }
    /// ICAL_METHOD_RESPONSE
    public static var RESPONSE: Property.Method { .init(rawValue: ICAL_METHOD_RESPONSE) }
    /// ICAL_METHOD_MOVE
    public static var MOVE: Property.Method { .init(rawValue: ICAL_METHOD_MOVE) }
    /// ICAL_METHOD_MODIFY
    public static var MODIFY: Property.Method { .init(rawValue: ICAL_METHOD_MODIFY) }
    /// ICAL_METHOD_GENERATEUID
    public static var GENERATEUID: Property.Method { .init(rawValue: ICAL_METHOD_GENERATEUID) }
    /// ICAL_METHOD_DELETE
    public static var DELETE: Property.Method { .init(rawValue: ICAL_METHOD_DELETE) }
    /// ICAL_METHOD_POLLSTATUS
    public static var POLLSTATUS: Property.Method { .init(rawValue: ICAL_METHOD_POLLSTATUS) }
    /// ICAL_METHOD_NONE
    public static var NONE: Property.Method { .init(rawValue: ICAL_METHOD_NONE) }
}

extension Property.PollCompletion {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_pollcompletion = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.PollCompletion {
    /// ICAL_POLLCOMPLETION_X
    public static var X: Property.PollCompletion { .init(rawValue: ICAL_POLLCOMPLETION_X) }
    /// ICAL_POLLCOMPLETION_SERVER
    public static var SERVER: Property.PollCompletion { .init(rawValue: ICAL_POLLCOMPLETION_SERVER) }
    /// ICAL_POLLCOMPLETION_SERVERSUBMIT
    public static var SERVERSUBMIT: Property.PollCompletion { .init(rawValue: ICAL_POLLCOMPLETION_SERVERSUBMIT) }
    /// ICAL_POLLCOMPLETION_SERVERCHOICE
    public static var SERVERCHOICE: Property.PollCompletion { .init(rawValue: ICAL_POLLCOMPLETION_SERVERCHOICE) }
    /// ICAL_POLLCOMPLETION_CLIENT
    public static var CLIENT: Property.PollCompletion { .init(rawValue: ICAL_POLLCOMPLETION_CLIENT) }
    /// ICAL_POLLCOMPLETION_NONE
    public static var NONE: Property.PollCompletion { .init(rawValue: ICAL_POLLCOMPLETION_NONE) }
}

extension Property.PollMode {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_pollmode = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.PollMode {
    /// ICAL_POLLMODE_X
    public static var X: Property.PollMode { .init(rawValue: ICAL_POLLMODE_X) }
    /// ICAL_POLLMODE_BASIC
    public static var BASIC: Property.PollMode { .init(rawValue: ICAL_POLLMODE_BASIC) }
    /// ICAL_POLLMODE_NONE
    public static var NONE: Property.PollMode { .init(rawValue: ICAL_POLLMODE_NONE) }
}

extension Property.QueryLevel {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_querylevel = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.QueryLevel {
    /// ICAL_QUERYLEVEL_X
    public static var X: Property.QueryLevel { .init(rawValue: ICAL_QUERYLEVEL_X) }
    /// ICAL_QUERYLEVEL_CALQL1
    public static var CALQL1: Property.QueryLevel { .init(rawValue: ICAL_QUERYLEVEL_CALQL1) }
    /// ICAL_QUERYLEVEL_CALQLNONE
    public static var CALQLNONE: Property.QueryLevel { .init(rawValue: ICAL_QUERYLEVEL_CALQLNONE) }
    /// ICAL_QUERYLEVEL_NONE
    public static var NONE: Property.QueryLevel { .init(rawValue: ICAL_QUERYLEVEL_NONE) }
}

extension Property.Status {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_status = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.Status {
    /// ICAL_STATUS_X
    public static var X: Property.Status { .init(rawValue: ICAL_STATUS_X) }
    /// ICAL_STATUS_TENTATIVE
    public static var TENTATIVE: Property.Status { .init(rawValue: ICAL_STATUS_TENTATIVE) }
    /// ICAL_STATUS_CONFIRMED
    public static var CONFIRMED: Property.Status { .init(rawValue: ICAL_STATUS_CONFIRMED) }
    /// ICAL_STATUS_COMPLETED
    public static var COMPLETED: Property.Status { .init(rawValue: ICAL_STATUS_COMPLETED) }
    /// ICAL_STATUS_NEEDSACTION
    public static var NEEDSACTION: Property.Status { .init(rawValue: ICAL_STATUS_NEEDSACTION) }
    /// ICAL_STATUS_CANCELLED
    public static var CANCELLED: Property.Status { .init(rawValue: ICAL_STATUS_CANCELLED) }
    /// ICAL_STATUS_INPROCESS
    public static var INPROCESS: Property.Status { .init(rawValue: ICAL_STATUS_INPROCESS) }
    /// ICAL_STATUS_DRAFT
    public static var DRAFT: Property.Status { .init(rawValue: ICAL_STATUS_DRAFT) }
    /// ICAL_STATUS_FINAL
    public static var FINAL: Property.Status { .init(rawValue: ICAL_STATUS_FINAL) }
    /// ICAL_STATUS_SUBMITTED
    public static var SUBMITTED: Property.Status { .init(rawValue: ICAL_STATUS_SUBMITTED) }
    /// ICAL_STATUS_PENDING
    public static var PENDING: Property.Status { .init(rawValue: ICAL_STATUS_PENDING) }
    /// ICAL_STATUS_FAILED
    public static var FAILED: Property.Status { .init(rawValue: ICAL_STATUS_FAILED) }
    /// ICAL_STATUS_DELETED
    public static var DELETED: Property.Status { .init(rawValue: ICAL_STATUS_DELETED) }
    /// ICAL_STATUS_NONE
    public static var NONE: Property.Status { .init(rawValue: ICAL_STATUS_NONE) }
}

extension Property.TaskMode {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_taskmode = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.TaskMode {
    /// ICAL_TASKMODE_X
    public static var X: Property.TaskMode { .init(rawValue: ICAL_TASKMODE_X) }
    /// ICAL_TASKMODE_AUTOMATICCOMPLETION
    public static var AUTOMATICCOMPLETION: Property.TaskMode { .init(rawValue: ICAL_TASKMODE_AUTOMATICCOMPLETION) }
    /// ICAL_TASKMODE_AUTOMATICFAILURE
    public static var AUTOMATICFAILURE: Property.TaskMode { .init(rawValue: ICAL_TASKMODE_AUTOMATICFAILURE) }
    /// ICAL_TASKMODE_AUTOMATICSTATUS
    public static var AUTOMATICSTATUS: Property.TaskMode { .init(rawValue: ICAL_TASKMODE_AUTOMATICSTATUS) }
    /// ICAL_TASKMODE_NONE
    public static var NONE: Property.TaskMode { .init(rawValue: ICAL_TASKMODE_NONE) }
}

extension Property.Transp {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_transp = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.Transp {
    /// ICAL_TRANSP_X
    public static var X: Property.Transp { .init(rawValue: ICAL_TRANSP_X) }
    /// ICAL_TRANSP_OPAQUE
    public static var OPAQUE: Property.Transp { .init(rawValue: ICAL_TRANSP_OPAQUE) }
    /// ICAL_TRANSP_OPAQUENOCONFLICT
    public static var OPAQUENOCONFLICT: Property.Transp { .init(rawValue: ICAL_TRANSP_OPAQUENOCONFLICT) }
    /// ICAL_TRANSP_TRANSPARENT
    public static var TRANSPARENT: Property.Transp { .init(rawValue: ICAL_TRANSP_TRANSPARENT) }
    /// ICAL_TRANSP_TRANSPARENTNOCONFLICT
    public static var TRANSPARENTNOCONFLICT: Property.Transp { .init(rawValue: ICAL_TRANSP_TRANSPARENTNOCONFLICT) }
    /// ICAL_TRANSP_NONE
    public static var NONE: Property.Transp { .init(rawValue: ICAL_TRANSP_NONE) }
}

extension Property.XlicClass {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalproperty_xlicclass = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Property.XlicClass {
    /// ICAL_XLICCLASS_X
    public static var X: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_X) }
    /// ICAL_XLICCLASS_PUBLISHNEW
    public static var PUBLISHNEW: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_PUBLISHNEW) }
    /// ICAL_XLICCLASS_PUBLISHUPDATE
    public static var PUBLISHUPDATE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_PUBLISHUPDATE) }
    /// ICAL_XLICCLASS_PUBLISHFREEBUSY
    public static var PUBLISHFREEBUSY: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_PUBLISHFREEBUSY) }
    /// ICAL_XLICCLASS_REQUESTNEW
    public static var REQUESTNEW: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTNEW) }
    /// ICAL_XLICCLASS_REQUESTUPDATE
    public static var REQUESTUPDATE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTUPDATE) }
    /// ICAL_XLICCLASS_REQUESTRESCHEDULE
    public static var REQUESTRESCHEDULE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTRESCHEDULE) }
    /// ICAL_XLICCLASS_REQUESTDELEGATE
    public static var REQUESTDELEGATE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTDELEGATE) }
    /// ICAL_XLICCLASS_REQUESTNEWORGANIZER
    public static var REQUESTNEWORGANIZER: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTNEWORGANIZER) }
    /// ICAL_XLICCLASS_REQUESTFORWARD
    public static var REQUESTFORWARD: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTFORWARD) }
    /// ICAL_XLICCLASS_REQUESTSTATUS
    public static var REQUESTSTATUS: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTSTATUS) }
    /// ICAL_XLICCLASS_REQUESTFREEBUSY
    public static var REQUESTFREEBUSY: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REQUESTFREEBUSY) }
    /// ICAL_XLICCLASS_REPLYACCEPT
    public static var REPLYACCEPT: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REPLYACCEPT) }
    /// ICAL_XLICCLASS_REPLYDECLINE
    public static var REPLYDECLINE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REPLYDECLINE) }
    /// ICAL_XLICCLASS_REPLYDELEGATE
    public static var REPLYDELEGATE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REPLYDELEGATE) }
    /// ICAL_XLICCLASS_REPLYCRASHERACCEPT
    public static var REPLYCRASHERACCEPT: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REPLYCRASHERACCEPT) }
    /// ICAL_XLICCLASS_REPLYCRASHERDECLINE
    public static var REPLYCRASHERDECLINE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REPLYCRASHERDECLINE) }
    /// ICAL_XLICCLASS_ADDINSTANCE
    public static var ADDINSTANCE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_ADDINSTANCE) }
    /// ICAL_XLICCLASS_CANCELEVENT
    public static var CANCELEVENT: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_CANCELEVENT) }
    /// ICAL_XLICCLASS_CANCELINSTANCE
    public static var CANCELINSTANCE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_CANCELINSTANCE) }
    /// ICAL_XLICCLASS_CANCELALL
    public static var CANCELALL: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_CANCELALL) }
    /// ICAL_XLICCLASS_REFRESH
    public static var REFRESH: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_REFRESH) }
    /// ICAL_XLICCLASS_COUNTER
    public static var COUNTER: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_COUNTER) }
    /// ICAL_XLICCLASS_DECLINECOUNTER
    public static var DECLINECOUNTER: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_DECLINECOUNTER) }
    /// ICAL_XLICCLASS_MALFORMED
    public static var MALFORMED: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_MALFORMED) }
    /// ICAL_XLICCLASS_OBSOLETE
    public static var OBSOLETE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_OBSOLETE) }
    /// ICAL_XLICCLASS_MISSEQUENCED
    public static var MISSEQUENCED: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_MISSEQUENCED) }
    /// ICAL_XLICCLASS_UNKNOWN
    public static var UNKNOWN: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_UNKNOWN) }
    /// ICAL_XLICCLASS_NONE
    public static var NONE: Property.XlicClass { .init(rawValue: ICAL_XLICCLASS_NONE) }
}
