//
//  Parameter+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import Foundation
import libical

extension Parameter {
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
    public typealias PartStat = Wrap<icalparameter_partstat>
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
    public typealias SubState = Wrap<icalparameter_substate>
    /// Wrap<icalparameter_value>
    public typealias Value = Wrap<icalparameter_value>
    /// Wrap<icalparameter_xliccomparetype>
    public typealias XlicCompareType = Wrap<icalparameter_xliccomparetype>
    /// Wrap<icalparameter_xlicerrortype>
    public typealias XlicErrorType = Wrap<icalparameter_xlicerrortype>
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
    /// ICAL_LOCAL_X
    public static var X: Parameter.Local { .init(rawValue: ICAL_LOCAL_X) }
    /// ICAL_LOCAL_TRUE
    public static var TRUE: Parameter.Local { .init(rawValue: ICAL_LOCAL_TRUE) }
    /// ICAL_LOCAL_FALSE
    public static var FALSE: Parameter.Local { .init(rawValue: ICAL_LOCAL_FALSE) }
    /// ICAL_LOCAL_NONE
    public static var NONE: Parameter.Local { .init(rawValue: ICAL_LOCAL_NONE) }
}

extension Parameter.PartStat {
    /// ICAL_PARTSTAT_X
    public static var X: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_X) }
    /// ICAL_PARTSTAT_NEEDSACTION
    public static var NEEDSACTION: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_NEEDSACTION) }
    /// ICAL_PARTSTAT_ACCEPTED
    public static var ACCEPTED: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_ACCEPTED) }
    /// ICAL_PARTSTAT_DECLINED
    public static var DECLINED: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_DECLINED) }
    /// ICAL_PARTSTAT_TENTATIVE
    public static var TENTATIVE: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_TENTATIVE) }
    /// ICAL_PARTSTAT_DELEGATED
    public static var DELEGATED: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_DELEGATED) }
    /// ICAL_PARTSTAT_COMPLETED
    public static var COMPLETED: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_COMPLETED) }
    /// ICAL_PARTSTAT_INPROCESS
    public static var INPROCESS: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_INPROCESS) }
    /// ICAL_PARTSTAT_FAILED
    public static var FAILED: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_FAILED) }
    /// ICAL_PARTSTAT_NONE
    public static var NONE: Parameter.PartStat { .init(rawValue: ICAL_PARTSTAT_NONE) }
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
    /// ICAL_STAYINFORMED_X
    public static var X: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_X) }
    /// ICAL_STAYINFORMED_TRUE
    public static var TRUE: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_TRUE) }
    /// ICAL_STAYINFORMED_FALSE
    public static var FALSE: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_FALSE) }
    /// ICAL_STAYINFORMED_NONE
    public static var NONE: Parameter.StayInformed { .init(rawValue: ICAL_STAYINFORMED_NONE) }
}

extension Parameter.SubState {
    /// ICAL_SUBSTATE_X
    public static var X: Parameter.SubState { .init(rawValue: ICAL_SUBSTATE_X) }
    /// ICAL_SUBSTATE_OK
    public static var OK: Parameter.SubState { .init(rawValue: ICAL_SUBSTATE_OK) }
    /// ICAL_SUBSTATE_ERROR
    public static var ERROR: Parameter.SubState { .init(rawValue: ICAL_SUBSTATE_ERROR) }
    /// ICAL_SUBSTATE_SUSPENDED
    public static var SUSPENDED: Parameter.SubState { .init(rawValue: ICAL_SUBSTATE_SUSPENDED) }
    /// ICAL_SUBSTATE_NONE
    public static var NONE: Parameter.SubState { .init(rawValue: ICAL_SUBSTATE_NONE) }
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



