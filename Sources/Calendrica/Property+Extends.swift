//
//  Property+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/17.
//

import libical

extension Property {
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
    /// ICAL_POLLMODE_X
    public static var X: Property.PollMode { .init(rawValue: ICAL_POLLMODE_X) }
    /// ICAL_POLLMODE_BASIC
    public static var BASIC: Property.PollMode { .init(rawValue: ICAL_POLLMODE_BASIC) }
    /// ICAL_POLLMODE_NONE
    public static var NONE: Property.PollMode { .init(rawValue: ICAL_POLLMODE_NONE) }
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
