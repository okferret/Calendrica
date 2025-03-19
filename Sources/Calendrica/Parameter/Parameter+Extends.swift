//
//  Parameter+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import Foundation
import libical

extension Parameter {
    /// Wrap<icalparameter_kind>
    public typealias Kind = Wrap<icalparameter_kind>
    /// Wrap<icalparameter_action>
    public typealias Action = Wrap<icalparameter_action>
    /// Wrap<icalparameter_cutype>
    public typealias CuType = Wrap<icalparameter_cutype>
    /// Wrap<icalparameter_display>
    public typealias Display = Wrap<icalparameter_display>
    /// Wrap<icalparameter_enable>
    public typealias Enable = Wrap<icalparameter_enable>
    /// Wrap<icalparameter_encoding>
    public typealias Encoding = Wrap<icalparameter_encoding>
    /// Wrap<icalparameter_fbtype>
    public typealias FbType = Wrap<icalparameter_fbtype>
    /// Wrap<icalparameter_feature>
    public typealias Feature = Wrap<icalparameter_feature>
    /// Wrap<icalparameter_local>
    public typealias Local = Wrap<icalparameter_local>
    /// Wrap<icalparameter_partstat>
    public typealias Partstat = Wrap<icalparameter_partstat>
    /// Wrap<icalparameter_patchaction>
    public typealias PatchAction = Wrap<icalparameter_patchaction>
    /// Wrap<icalparameter_range>
    public typealias Range = Wrap<icalparameter_range>
    /// Wrap<icalparameter_related>
    public typealias Related = Wrap<icalparameter_related>
    /// Wrap<icalparameter_reltype>
    public typealias RelType = Wrap<icalparameter_reltype>
    /// Wrap<icalparameter_required>
    public typealias Required = Wrap<icalparameter_required>
    /// Wrap<icalparameter_role>
    public typealias Role = Wrap<icalparameter_role>
    /// Wrap<icalparameter_rsvp>
    public typealias RSVP = Wrap<icalparameter_rsvp>
    /// Wrap<icalparameter_scheduleagent>
    public typealias ScheduleAgent = Wrap<icalparameter_scheduleagent>
    /// Wrap<icalparameter_scheduleforcesend>
    public typealias ScheduleForceSend = Wrap<icalparameter_scheduleforcesend>
    /// Wrap<icalparameter_stayinformed>
    public typealias StayInformed = Wrap<icalparameter_stayinformed>
    /// Wrap<icalparameter_substate>
    public typealias Substate = Wrap<icalparameter_substate>
    /// Wrap<icalparameter_value>
    public typealias Value = Wrap<icalparameter_value>
    /// Wrap<icalparameter_xliccomparetype>
    public typealias XlicCompareType = Wrap<icalparameter_xliccomparetype>
    /// Wrap<icalparameter_xlicerrortype>
    public typealias XlicErrorType = Wrap<icalparameter_xlicerrortype>
}

extension Parameter.Kind {
    /// String
    public var name: String { rawValue.name }
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter name: String
    public init?(name: String) {
        if let kind: icalparameter_kind = .init(name: name) {
            self.init(rawValue: kind)
        } else {
            return nil
        }
    }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_kind = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Kind {
    /// ICAL_ANY_PARAMETER
    public static var ANY: Parameter.Kind { .init(rawValue: ICAL_ANY_PARAMETER) }
    /// ICAL_ACTIONPARAM_PARAMETER
    public static var ACTIONPARAM: Parameter.Kind { .init(rawValue: ICAL_ACTIONPARAM_PARAMETER) }
    /// ICAL_ALTREP_PARAMETER
    public static var ALTREP: Parameter.Kind { .init(rawValue: ICAL_ALTREP_PARAMETER) }
    /// ICAL_CHARSET_PARAMETER
    public static var CHARSET: Parameter.Kind { .init(rawValue: ICAL_CHARSET_PARAMETER) }
    /// ICAL_CN_PARAMETER
    public static var CN: Parameter.Kind { .init(rawValue: ICAL_CN_PARAMETER) }
    /// ICAL_CUTYPE_PARAMETER
    public static var CUTYPE: Parameter.Kind { .init(rawValue: ICAL_CUTYPE_PARAMETER) }
    /// ICAL_DELEGATEDFROM_PARAMETER
    public static var DELEGATEDFROM: Parameter.Kind { .init(rawValue: ICAL_DELEGATEDFROM_PARAMETER) }
    /// ICAL_DELEGATEDTO_PARAMETER
    public static var DELEGATEDTO: Parameter.Kind { .init(rawValue: ICAL_DELEGATEDTO_PARAMETER) }
    /// ICAL_DIR_PARAMETER
    public static var DIR: Parameter.Kind { .init(rawValue: ICAL_DIR_PARAMETER) }
    /// ICAL_DISPLAY_PARAMETER
    public static var DISPLAY: Parameter.Kind { .init(rawValue: ICAL_DISPLAY_PARAMETER) }
    /// ICAL_EMAIL_PARAMETER
    public static var EMAIL: Parameter.Kind { .init(rawValue: ICAL_EMAIL_PARAMETER) }
    /// ICAL_ENABLE_PARAMETER
    public static var ENABLE: Parameter.Kind { .init(rawValue: ICAL_ENABLE_PARAMETER) }
    /// ICAL_ENCODING_PARAMETER
    public static var ENCODING: Parameter.Kind { .init(rawValue: ICAL_ENCODING_PARAMETER) }
    /// ICAL_FBTYPE_PARAMETER
    public static var FBTYPE: Parameter.Kind { .init(rawValue: ICAL_FBTYPE_PARAMETER) }
    /// ICAL_FEATURE_PARAMETER
    public static var FEATURE: Parameter.Kind { .init(rawValue: ICAL_FEATURE_PARAMETER) }
    /// ICAL_FILENAME_PARAMETER
    public static var FILENAME: Parameter.Kind { .init(rawValue: ICAL_FILENAME_PARAMETER) }
    /// ICAL_FMTTYPE_PARAMETER
    public static var FMTTYPE: Parameter.Kind { .init(rawValue: ICAL_FMTTYPE_PARAMETER) }
    /// ICAL_IANA_PARAMETER
    public static var IANA: Parameter.Kind { .init(rawValue: ICAL_IANA_PARAMETER) }
    /// ICAL_ID_PARAMETER
    public static var ID: Parameter.Kind { .init(rawValue: ICAL_ID_PARAMETER) }
    /// ICAL_LABEL_PARAMETER
    public static var LABEL: Parameter.Kind { .init(rawValue: ICAL_LABEL_PARAMETER) }
    /// ICAL_LANGUAGE_PARAMETER
    public static var LANGUAGE: Parameter.Kind { .init(rawValue: ICAL_LANGUAGE_PARAMETER) }
    /// ICAL_LATENCY_PARAMETER
    public static var LATENCY: Parameter.Kind { .init(rawValue: ICAL_LATENCY_PARAMETER) }
    /// ICAL_LOCAL_PARAMETER
    public static var LOCAL: Parameter.Kind { .init(rawValue: ICAL_LOCAL_PARAMETER) }
    /// ICAL_LOCALIZE_PARAMETER
    public static var LOCALIZE: Parameter.Kind { .init(rawValue: ICAL_LOCALIZE_PARAMETER) }
    /// ICAL_MANAGEDID_PARAMETER
    public static var MANAGEDID: Parameter.Kind { .init(rawValue: ICAL_MANAGEDID_PARAMETER) }
    /// ICAL_MEMBER_PARAMETER
    public static var MEMBER: Parameter.Kind { .init(rawValue: ICAL_MEMBER_PARAMETER) }
    /// ICAL_MODIFIED_PARAMETER
    public static var MODIFIED: Parameter.Kind { .init(rawValue: ICAL_MODIFIED_PARAMETER) }
    /// ICAL_OPTIONS_PARAMETER
    public static var OPTIONS: Parameter.Kind { .init(rawValue: ICAL_OPTIONS_PARAMETER) }
    /// ICAL_PARTSTAT_PARAMETER
    public static var PARTSTAT: Parameter.Kind { .init(rawValue: ICAL_PARTSTAT_PARAMETER) }
    /// ICAL_PATCHACTION_PARAMETER
    public static var PATCHACTION: Parameter.Kind { .init(rawValue: ICAL_PATCHACTION_PARAMETER) }
    /// ICAL_PUBLICCOMMENT_PARAMETER
    public static var PUBLICCOMMENT: Parameter.Kind { .init(rawValue: ICAL_PUBLICCOMMENT_PARAMETER) }
    /// ICAL_RANGE_PARAMETER
    public static var RANGE: Parameter.Kind { .init(rawValue: ICAL_RANGE_PARAMETER) }
    /// ICAL_REASON_PARAMETER
    public static var REASON: Parameter.Kind { .init(rawValue: ICAL_REASON_PARAMETER) }
    /// ICAL_RELATED_PARAMETER
    public static var RELATED: Parameter.Kind { .init(rawValue: ICAL_RELATED_PARAMETER) }
    /// ICAL_RELTYPE_PARAMETER
    public static var RELTYPE: Parameter.Kind { .init(rawValue: ICAL_RELTYPE_PARAMETER) }
    /// ICAL_REQUIRED_PARAMETER
    public static var REQUIRED: Parameter.Kind { .init(rawValue: ICAL_REQUIRED_PARAMETER) }
    /// ICAL_RESPONSE_PARAMETER
    public static var RESPONSE: Parameter.Kind { .init(rawValue: ICAL_RESPONSE_PARAMETER) }
    /// ICAL_ROLE_PARAMETER
    public static var ROLE: Parameter.Kind { .init(rawValue: ICAL_ROLE_PARAMETER) }
    /// ICAL_RSVP_PARAMETER
    public static var RSVP: Parameter.Kind { .init(rawValue: ICAL_RSVP_PARAMETER) }
    /// ICAL_SCHEDULEAGENT_PARAMETER
    public static var SCHEDULEAGENT: Parameter.Kind { .init(rawValue: ICAL_SCHEDULEAGENT_PARAMETER) }
    /// ICAL_SCHEDULEFORCESEND_PARAMETER
    public static var SCHEDULEFORCESEND: Parameter.Kind { .init(rawValue: ICAL_SCHEDULEFORCESEND_PARAMETER) }
    /// ICAL_SCHEDULESTATUS_PARAMETER
    public static var SCHEDULESTATUS: Parameter.Kind { .init(rawValue: ICAL_SCHEDULESTATUS_PARAMETER) }
    /// ICAL_SENTBY_PARAMETER
    public static var SENTBY: Parameter.Kind { .init(rawValue: ICAL_SENTBY_PARAMETER) }
    /// ICAL_SIZE_PARAMETER
    public static var SIZE: Parameter.Kind { .init(rawValue: ICAL_SIZE_PARAMETER) }
    /// ICAL_STAYINFORMED_PARAMETER
    public static var STAYINFORMED: Parameter.Kind { .init(rawValue: ICAL_STAYINFORMED_PARAMETER) }
    /// ICAL_SUBSTATE_PARAMETER
    public static var SUBSTATE: Parameter.Kind { .init(rawValue: ICAL_SUBSTATE_PARAMETER) }
    /// ICAL_TZID_PARAMETER
    public static var TZID: Parameter.Kind { .init(rawValue: ICAL_TZID_PARAMETER) }
    /// ICAL_VALUE_PARAMETER
    public static var VALUE: Parameter.Kind { .init(rawValue: ICAL_VALUE_PARAMETER) }
    /// ICAL_X_PARAMETER
    public static var X: Parameter.Kind { .init(rawValue: ICAL_X_PARAMETER) }
    /// ICAL_XLICCOMPARETYPE_PARAMETER
    public static var XLICCOMPARETYPE: Parameter.Kind { .init(rawValue: ICAL_XLICCOMPARETYPE_PARAMETER) }
    /// ICAL_XLICERRORTYPE_PARAMETER
    public static var XLICERRORTYPE: Parameter.Kind { .init(rawValue: ICAL_XLICERRORTYPE_PARAMETER) }
}

extension Parameter.Action {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_action = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Action {
    /// ICAL_ACTIONPARAM_X
    public static var X: Parameter.Action { .init(rawValue: ICAL_ACTIONPARAM_X) }
    /// ICAL_ACTIONPARAM_ASK
    public static var ASK: Parameter.Action { .init(rawValue: ICAL_ACTIONPARAM_ASK) }
    /// ICAL_ACTIONPARAM_ABORT
    public static var ABORT: Parameter.Action { .init(rawValue: ICAL_ACTIONPARAM_ABORT) }
    /// ICAL_ACTIONPARAM_NONE
    public static var NONE: Parameter.Action { .init(rawValue: ICAL_ACTIONPARAM_NONE) }
}

extension Parameter.CuType {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_cutype = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.CuType {
    /// ICAL_CUTYPE_X
    public static var X: Parameter.CuType { .init(rawValue: ICAL_CUTYPE_X) }
    /// ICAL_CUTYPE_INDIVIDUAL
    public static var INDIVIDUAL: Parameter.CuType { .init(rawValue: ICAL_CUTYPE_INDIVIDUAL) }
    /// ICAL_CUTYPE_GROUP
    public static var GROUP: Parameter.CuType { .init(rawValue: ICAL_CUTYPE_GROUP) }
    /// ICAL_CUTYPE_RESOURCE
    public static var RESOURCE: Parameter.CuType { .init(rawValue: ICAL_CUTYPE_RESOURCE) }
    /// ICAL_CUTYPE_ROOM
    public static var ROOM: Parameter.CuType { .init(rawValue: ICAL_CUTYPE_ROOM) }
    /// ICAL_CUTYPE_UNKNOWN
    public static var UNKNOWN: Parameter.CuType { .init(rawValue: ICAL_CUTYPE_UNKNOWN) }
    /// ICAL_CUTYPE_NONE
    public static var NONE: Parameter.CuType { .init(rawValue: ICAL_CUTYPE_NONE) }
}

extension Parameter.Display {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_display = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Display {
    /// ICAL_DISPLAY_X
    public static var X: Parameter.Display { .init(rawValue: ICAL_DISPLAY_X) }
    /// ICAL_DISPLAY_BADGE
    public static var BADGE: Parameter.Display { .init(rawValue: ICAL_DISPLAY_BADGE) }
    /// ICAL_DISPLAY_GRAPHIC
    public static var GRAPHIC: Parameter.Display { .init(rawValue: ICAL_DISPLAY_GRAPHIC) }
    /// ICAL_DISPLAY_FULLSIZE
    public static var FULLSIZE: Parameter.Display { .init(rawValue: ICAL_DISPLAY_FULLSIZE) }
    /// ICAL_DISPLAY_THUMBNAIL
    public static var THUMBNAIL: Parameter.Display { .init(rawValue: ICAL_DISPLAY_THUMBNAIL) }
    /// ICAL_DISPLAY_NONE
    public static var NONE: Parameter.Display { .init(rawValue: ICAL_DISPLAY_NONE) }
}

extension Parameter.Enable {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_enable = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Enable {
    /// ICAL_ENABLE_X
    public static var X: Parameter.Enable { .init(rawValue: ICAL_ENABLE_X) }
    /// ICAL_ENABLE_TRUE
    public static var TRUE: Parameter.Enable { .init(rawValue: ICAL_ENABLE_TRUE) }
    /// ICAL_ENABLE_FALSE
    public static var FALSE: Parameter.Enable { .init(rawValue: ICAL_ENABLE_FALSE) }
    /// ICAL_ENABLE_NONE
    public static var NONE: Parameter.Enable { .init(rawValue: ICAL_ENABLE_NONE) }
}

extension Parameter.Encoding {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_encoding = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Encoding {
    /// ICAL_ENCODING_X
    public static var X: Parameter.Encoding { .init(rawValue: ICAL_ENCODING_X) }
    /// ICAL_ENCODING_8BIT
    public static var x8BIT: Parameter.Encoding { .init(rawValue: ICAL_ENCODING_8BIT) }
    /// ICAL_ENCODING_BASE64
    public static var BASE64: Parameter.Encoding { .init(rawValue: ICAL_ENCODING_BASE64) }
    /// ICAL_ENCODING_NONE
    public static var NONE: Parameter.Encoding { .init(rawValue: ICAL_ENCODING_NONE) }
    
}

extension Parameter.FbType {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_fbtype = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.FbType {
    /// ICAL_FBTYPE_X
    public static var X: Parameter.FbType { .init(rawValue: ICAL_FBTYPE_X) }
    /// ICAL_FBTYPE_FREE
    public static var FREE: Parameter.FbType { .init(rawValue: ICAL_FBTYPE_FREE) }
    /// ICAL_FBTYPE_BUSY
    public static var BUSY: Parameter.FbType { .init(rawValue: ICAL_FBTYPE_BUSY) }
    /// ICAL_FBTYPE_BUSYUNAVAILABLE
    public static var BUSYUNAVAILABLE: Parameter.FbType { .init(rawValue: ICAL_FBTYPE_BUSYUNAVAILABLE) }
    /// ICAL_FBTYPE_BUSYTENTATIVE
    public static var BUSYTENTATIVE: Parameter.FbType { .init(rawValue: ICAL_FBTYPE_BUSYTENTATIVE) }
    /// ICAL_FBTYPE_NONE
    public static var NONE: Parameter.FbType { .init(rawValue: ICAL_FBTYPE_NONE) }
}

extension Parameter.Feature {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_feature = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Feature {
    /// ICAL_FEATURE_X
    public static var X: Parameter.Feature { .init(rawValue: ICAL_FEATURE_X) }
    /// ICAL_FEATURE_AUDIO
    public static var AUDIO: Parameter.Feature { .init(rawValue: ICAL_FEATURE_AUDIO) }
    /// ICAL_FEATURE_CHAT
    public static var CHAT: Parameter.Feature { .init(rawValue: ICAL_FEATURE_CHAT) }
    /// ICAL_FEATURE_FEED
    public static var FEED: Parameter.Feature { .init(rawValue: ICAL_FEATURE_FEED) }
    /// ICAL_FEATURE_MODERATOR
    public static var MODERATOR: Parameter.Feature { .init(rawValue: ICAL_FEATURE_MODERATOR) }
    /// ICAL_FEATURE_PHONE
    public static var PHONE: Parameter.Feature { .init(rawValue: ICAL_FEATURE_PHONE) }
    /// ICAL_FEATURE_SCREEN
    public static var SCREEN: Parameter.Feature { .init(rawValue: ICAL_FEATURE_SCREEN) }
    /// ICAL_FEATURE_VIDEO
    public static var VIDEO: Parameter.Feature { .init(rawValue: ICAL_FEATURE_VIDEO) }
    /// ICAL_FEATURE_NONE
    public static var NONE: Parameter.Feature { .init(rawValue: ICAL_FEATURE_NONE) }
}

extension Parameter.Local {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_local = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Local {
    /// ICAL_LOCAL_X
    public static var X: Parameter.Local { .init(rawValue: ICAL_LOCAL_X) }
    /// ICAL_LOCAL_TRUE
    public static var TRUE: Parameter.Local { .init(rawValue: ICAL_LOCAL_TRUE) }
    /// ICAL_LOCAL_FALSE
    public static var FALSE: Parameter.Local { .init(rawValue: ICAL_LOCAL_FALSE) }
    /// ICAL_LOCAL_NONE
    public static var NONE: Parameter.Local { .init(rawValue: ICAL_LOCAL_NONE) }
}

extension Parameter.Partstat {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_partstat = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Partstat {
    /// ICAL_PARTSTAT_X
    public static var X: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_X) }
    /// ICAL_PARTSTAT_NEEDSACTION
    public static var NEEDSACTION: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_NEEDSACTION) }
    /// ICAL_PARTSTAT_ACCEPTED
    public static var ACCEPTED: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_ACCEPTED) }
    /// ICAL_PARTSTAT_DECLINED
    public static var DECLINED: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_DECLINED) }
    /// ICAL_PARTSTAT_TENTATIVE
    public static var TENTATIVE: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_TENTATIVE) }
    /// ICAL_PARTSTAT_DELEGATED
    public static var DELEGATED: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_DELEGATED) }
    /// ICAL_PARTSTAT_COMPLETED
    public static var COMPLETED: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_COMPLETED) }
    /// ICAL_PARTSTAT_INPROCESS
    public static var INPROCESS: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_INPROCESS) }
    /// ICAL_PARTSTAT_FAILED
    public static var FAILED: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_FAILED) }
    /// ICAL_PARTSTAT_NONE
    public static var NONE: Parameter.Partstat { .init(rawValue: ICAL_PARTSTAT_NONE) }
}

extension Parameter.PatchAction {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_patchaction = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.PatchAction {
    /// ICAL_PATCHACTION_X
    public static var X: Parameter.PatchAction { .init(rawValue: ICAL_PATCHACTION_X) }
    /// ICAL_PATCHACTION_CREATE
    public static var CREATE: Parameter.PatchAction { .init(rawValue: ICAL_PATCHACTION_CREATE) }
    /// ICAL_PATCHACTION_BYNAME
    public static var BYNAME: Parameter.PatchAction { .init(rawValue: ICAL_PATCHACTION_BYNAME) }
    /// ICAL_PATCHACTION_BYVALUE
    public static var BYVALUE: Parameter.PatchAction { .init(rawValue: ICAL_PATCHACTION_BYVALUE) }
    /// ICAL_PATCHACTION_BYPARAM
    public static var BYPARAM: Parameter.PatchAction { .init(rawValue: ICAL_PATCHACTION_BYPARAM) }
    /// ICAL_PATCHACTION_NONE
    public static var NONE: Parameter.PatchAction { .init(rawValue: ICAL_PATCHACTION_NONE) }
}

extension Parameter.Range {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_range = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Range {
    /// ICAL_RANGE_X
    public static var X: Parameter.Range { .init(rawValue: ICAL_RANGE_X) }
    /// ICAL_RANGE_THISANDPRIOR
    public static var THISANDPRIOR: Parameter.Range { .init(rawValue: ICAL_RANGE_THISANDPRIOR) }
    /// ICAL_RANGE_THISANDFUTURE
    public static var THISANDFUTURE: Parameter.Range { .init(rawValue: ICAL_RANGE_THISANDFUTURE) }
    /// ICAL_RANGE_NONE
    public static var NONE: Parameter.Range { .init(rawValue: ICAL_RANGE_NONE) }
}

extension Parameter.Related {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_related = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Related {
    /// ICAL_RELATED_X
    public static var X: Parameter.Related { .init(rawValue: ICAL_RELATED_X) }
    /// ICAL_RELATED_START
    public static var START: Parameter.Related { .init(rawValue: ICAL_RELATED_START) }
    /// ICAL_RELATED_END
    public static var END: Parameter.Related { .init(rawValue: ICAL_RELATED_END) }
    /// ICAL_RELATED_NONE
    public static var NONE: Parameter.Related { .init(rawValue: ICAL_RELATED_NONE) }
}

extension Parameter.RelType {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_reltype = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.RelType {
    /// ICAL_RELTYPE_X
    public static var X: Parameter.RelType { .init(rawValue: ICAL_RELTYPE_X) }
    /// ICAL_RELTYPE_PARENT
    public static var PARENT: Parameter.RelType { .init(rawValue: ICAL_RELTYPE_PARENT) }
    /// ICAL_RELTYPE_CHILD
    public static var CHILD: Parameter.RelType { .init(rawValue: ICAL_RELTYPE_CHILD) }
    /// ICAL_RELTYPE_SIBLING
    public static var SIBLING: Parameter.RelType { .init(rawValue: ICAL_RELTYPE_SIBLING) }
    /// ICAL_RELTYPE_POLL
    public static var POLL: Parameter.RelType { .init(rawValue: ICAL_RELTYPE_POLL) }
    /// ICAL_RELTYPE_NONE
    public static var NONE: Parameter.RelType { .init(rawValue: ICAL_RELTYPE_NONE) }
}

extension Parameter.Required {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_required = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Required {
    /// ICAL_REQUIRED_X
    public static var X: Parameter.Required { .init(rawValue: ICAL_REQUIRED_X) }
    /// ICAL_REQUIRED_TRUE
    public static var TRUE: Parameter.Required { .init(rawValue: ICAL_REQUIRED_TRUE) }
    /// ICAL_REQUIRED_FALSE
    public static var FALSE: Parameter.Required { .init(rawValue: ICAL_REQUIRED_FALSE) }
    /// ICAL_REQUIRED_NONE
    public static var NONE: Parameter.Required { .init(rawValue: ICAL_REQUIRED_NONE) }
}

extension Parameter.Role {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_role = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Role {
    /// ICAL_ROLE_X
    public static var X: Parameter.Role { .init(rawValue: ICAL_ROLE_X) }
    /// ICAL_ROLE_CHAIR
    public static var CHAIR: Parameter.Role { .init(rawValue: ICAL_ROLE_CHAIR) }
    /// ICAL_ROLE_REQPARTICIPANT
    public static var REQPARTICIPANT: Parameter.Role { .init(rawValue: ICAL_ROLE_REQPARTICIPANT) }
    /// ICAL_ROLE_OPTPARTICIPANT
    public static var OPTPARTICIPANT: Parameter.Role { .init(rawValue: ICAL_ROLE_OPTPARTICIPANT) }
    /// ICAL_ROLE_NONPARTICIPANT
    public static var NONPARTICIPANT: Parameter.Role { .init(rawValue: ICAL_ROLE_NONPARTICIPANT) }
    /// ICAL_ROLE_NONE
    public static var NONE: Parameter.Role { .init(rawValue: ICAL_ROLE_NONE) }
}

extension Parameter.RSVP {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_rsvp = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.RSVP {
    /// ICAL_RSVP_X
    public static var X: Parameter.RSVP { .init(rawValue: ICAL_RSVP_X) }
    /// ICAL_RSVP_TRUE
    public static var TRUE: Parameter.RSVP { .init(rawValue: ICAL_RSVP_TRUE) }
    /// ICAL_RSVP_FALSE
    public static var FALSE: Parameter.RSVP { .init(rawValue: ICAL_RSVP_FALSE) }
    /// ICAL_RSVP_NONE
    public static var NONE: Parameter.RSVP { .init(rawValue: ICAL_RSVP_NONE) }
}

extension Parameter.ScheduleAgent {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_scheduleagent = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.ScheduleAgent {
    /// ICAL_SCHEDULEAGENT_X
    public static var X: Parameter.ScheduleAgent { .init(rawValue: ICAL_SCHEDULEAGENT_X) }
    /// ICAL_SCHEDULEAGENT_SERVER
    public static var SERVER: Parameter.ScheduleAgent { .init(rawValue: ICAL_SCHEDULEAGENT_SERVER) }
    /// ICAL_SCHEDULEAGENT_CLIENT
    public static var CLIENT: Parameter.ScheduleAgent { .init(rawValue: ICAL_SCHEDULEAGENT_CLIENT) }
    /// ICAL_SCHEDULEAGENT_NONE
    public static var NONE: Parameter.ScheduleAgent { .init(rawValue: ICAL_SCHEDULEAGENT_NONE) }
}

extension Parameter.ScheduleForceSend {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_scheduleforcesend = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.ScheduleForceSend {
    /// ICAL_SCHEDULEFORCESEND_X
    public static var X: Parameter.ScheduleForceSend { .init(rawValue: ICAL_SCHEDULEFORCESEND_X) }
    /// ICAL_SCHEDULEFORCESEND_REQUEST
    public static var REQUEST: Parameter.ScheduleForceSend { .init(rawValue: ICAL_SCHEDULEFORCESEND_REQUEST) }
    /// ICAL_SCHEDULEFORCESEND_REPLY
    public static var REPLY: Parameter.ScheduleForceSend { .init(rawValue: ICAL_SCHEDULEFORCESEND_REPLY) }
    /// ICAL_SCHEDULEFORCESEND_NONE
    public static var NONE: Parameter.ScheduleForceSend { .init(rawValue: ICAL_SCHEDULEFORCESEND_NONE) }
}

extension Parameter.StayInformed {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_stayinformed = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.StayInformed {
    /// ICAL_STAYINFORMED_X
    public static var X: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_X) }
    /// ICAL_STAYINFORMED_TRUE
    public static var TRUE: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_TRUE) }
    /// ICAL_STAYINFORMED_FALSE
    public static var FALSE: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_FALSE) }
    /// ICAL_STAYINFORMED_NONE
    public static var NONE: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_NONE) }
}

extension Parameter.Substate {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_substate = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Substate {
    /// ICAL_SUBSTATE_X
    public static var X: Parameter.Substate { .init(rawValue: ICAL_SUBSTATE_X) }
    /// ICAL_SUBSTATE_OK
    public static var OK: Parameter.Substate { .init(rawValue: ICAL_SUBSTATE_OK) }
    /// ICAL_SUBSTATE_ERROR
    public static var ERROR: Parameter.Substate { .init(rawValue: ICAL_SUBSTATE_ERROR) }
    /// ICAL_SUBSTATE_SUSPENDED
    public static var SUSPENDED: Parameter.Substate { .init(rawValue: ICAL_SUBSTATE_SUSPENDED) }
    /// ICAL_SUBSTATE_NONE
    public static var NONE: Parameter.Substate { .init(rawValue: ICAL_SUBSTATE_NONE) }
}

extension Parameter.Value {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_value = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.Value {
    /// ICAL_VALUE_X
    public static var X: Parameter.Value { .init(rawValue: ICAL_VALUE_X) }
    /// ICAL_VALUE_BINARY
    public static var BINARY: Parameter.Value { .init(rawValue: ICAL_VALUE_BINARY) }
    /// ICAL_VALUE_BOOLEAN
    public static var BOOLEAN: Parameter.Value { .init(rawValue: ICAL_VALUE_BOOLEAN) }
    /// ICAL_VALUE_DATE
    public static var DATE: Parameter.Value { .init(rawValue: ICAL_VALUE_DATE) }
    /// ICAL_VALUE_DURATION
    public static var DURATION: Parameter.Value { .init(rawValue: ICAL_VALUE_DURATION) }
    /// ICAL_VALUE_FLOAT
    public static var FLOAT: Parameter.Value { .init(rawValue: ICAL_VALUE_FLOAT) }
    /// ICAL_VALUE_INTEGER
    public static var INTEGER: Parameter.Value { .init(rawValue: ICAL_VALUE_INTEGER) }
    /// ICAL_VALUE_PERIOD
    public static var PERIOD: Parameter.Value { .init(rawValue: ICAL_VALUE_PERIOD) }
    /// ICAL_VALUE_RECUR
    public static var RECUR: Parameter.Value { .init(rawValue: ICAL_VALUE_RECUR) }
    /// ICAL_VALUE_TEXT
    public static var TEXT: Parameter.Value { .init(rawValue: ICAL_VALUE_TEXT) }
    /// ICAL_VALUE_URI
    public static var URI: Parameter.Value { .init(rawValue: ICAL_VALUE_URI) }
    /// ICAL_VALUE_ERROR
    public static var ERROR: Parameter.Value { .init(rawValue: ICAL_VALUE_ERROR) }
    /// ICAL_VALUE_DATETIME
    public static var DATETIME: Parameter.Value { .init(rawValue: ICAL_VALUE_DATETIME) }
    /// ICAL_VALUE_UTCOFFSET
    public static var UTCOFFSET: Parameter.Value { .init(rawValue: ICAL_VALUE_UTCOFFSET) }
    /// ICAL_VALUE_CALADDRESS
    public static var CALADDRESS: Parameter.Value { .init(rawValue: ICAL_VALUE_CALADDRESS) }
    /// ICAL_VALUE_NONE
    public static var NONE: Parameter.Value { .init(rawValue: ICAL_VALUE_NONE) }
    
}

extension Parameter.XlicCompareType {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_xliccomparetype = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.XlicCompareType {
    /// ICAL_XLICCOMPARETYPE_X
    public static var X: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_X) }
    /// ICAL_XLICCOMPARETYPE_EQUAL
    public static var EQUAL: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_EQUAL) }
    /// ICAL_XLICCOMPARETYPE_NOTEQUAL
    public static var NOTEQUAL: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_NOTEQUAL) }
    /// ICAL_XLICCOMPARETYPE_LESS
    public static var LESS: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_LESS) }
    /// ICAL_XLICCOMPARETYPE_GREATER
    public static var GREATER: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_GREATER) }
    /// ICAL_XLICCOMPARETYPE_LESSEQUAL
    public static var LESSEQUAL: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_LESSEQUAL) }
    /// ICAL_XLICCOMPARETYPE_GREATEREQUAL
    public static var GREATEREQUAL: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_GREATEREQUAL) }
    /// ICAL_XLICCOMPARETYPE_REGEX
    public static var REGEX: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_REGEX) }
    /// ICAL_XLICCOMPARETYPE_ISNULL
    public static var ISNULL: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_ISNULL) }
    /// ICAL_XLICCOMPARETYPE_ISNOTNULL
    public static var ISNOTNULL: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_ISNOTNULL) }
    /// ICAL_XLICCOMPARETYPE_NONE
    public static var NONE: Parameter.XlicCompareType { .init(rawValue: ICAL_XLICCOMPARETYPE_NONE) }
}

extension Parameter.XlicErrorType {
    /// String
    public var text: String { rawValue.text }
    
    /// 构建
    /// - Parameter text: String
    public init?(text: String) {
        if let value: icalparameter_xlicerrortype = .init(text: text) {
            self.init(rawValue: value)
        } else {
            return nil
        }
    }
}

extension Parameter.XlicErrorType {
    /// ICAL_XLICERRORTYPE_X
    public static var X: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_X) }
    /// ICAL_XLICERRORTYPE_COMPONENTPARSEERROR
    public static var COMPONENTPARSEERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_COMPONENTPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PROPERTYPARSEERROR
    public static var PROPERTYPARSEERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_PROPERTYPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR
    public static var PARAMETERNAMEPARSEERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR
    public static var PARAMETERVALUEPARSEERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_VALUEPARSEERROR
    public static var VALUEPARSEERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_VALUEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_INVALIDITIP
    public static var INVALIDITIP: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_INVALIDITIP) }
    /// ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR
    public static var UNKNOWNVCALPROPERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR) }
    /// ICAL_XLICERRORTYPE_MIMEPARSEERROR
    public static var MIMEPARSEERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_MIMEPARSEERROR) }
    /// ICAL_XLICERRORTYPE_VCALPROPPARSEERROR
    public static var VCALPROPPARSEERROR: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_VCALPROPPARSEERROR) }
    /// ICAL_XLICERRORTYPE_NONE
    public static var NONE: Parameter.XlicErrorType { .init(rawValue: ICAL_XLICERRORTYPE_NONE) }
}



