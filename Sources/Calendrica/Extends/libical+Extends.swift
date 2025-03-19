//
//  libical+Extends.swift
//  Calendrica
//
//  Created by okferret on 2025/3/19.
//

import libical

// MARK: - icalcomponent
extension icalcomponent_kind: @retroactive CustomStringConvertible {
    
    /// String
    public var name: String {
        return icalcomponent_kind_to_string(self).hub.wrap()
    }
    
    /// String
    public var description: String {
        switch self {
        case ICAL_NO_COMPONENT:                 return "ICAL_NO_COMPONENT"
        case ICAL_ANY_COMPONENT:                return "ICAL_ANY_COMPONENT"
        case ICAL_XROOT_COMPONENT:              return "ICAL_XROOT_COMPONENT"
        case ICAL_XATTACH_COMPONENT:            return "ICAL_XATTACH_COMPONENT"
        case ICAL_VEVENT_COMPONENT:             return "ICAL_VEVENT_COMPONENT"
        case ICAL_VTODO_COMPONENT:              return "ICAL_VTODO_COMPONENT"
        case ICAL_VJOURNAL_COMPONENT:           return "ICAL_VJOURNAL_COMPONENT"
        case ICAL_VCALENDAR_COMPONENT:          return "ICAL_VCALENDAR_COMPONENT"
        case ICAL_VAGENDA_COMPONENT:            return "ICAL_VAGENDA_COMPONENT"
        case ICAL_VFREEBUSY_COMPONENT:          return "ICAL_VFREEBUSY_COMPONENT"
        case ICAL_VALARM_COMPONENT:             return "ICAL_VALARM_COMPONENT"
        case ICAL_XAUDIOALARM_COMPONENT:        return "ICAL_XAUDIOALARM_COMPONENT"
        case ICAL_XDISPLAYALARM_COMPONENT:      return "ICAL_XDISPLAYALARM_COMPONENT"
        case ICAL_XEMAILALARM_COMPONENT:        return "ICAL_XEMAILALARM_COMPONENT"
        case ICAL_XPROCEDUREALARM_COMPONENT:    return "ICAL_XPROCEDUREALARM_COMPONENT"
        case ICAL_VTIMEZONE_COMPONENT:          return "ICAL_VTIMEZONE_COMPONENT"
        case ICAL_XSTANDARD_COMPONENT:          return "ICAL_XSTANDARD_COMPONENT"
        case ICAL_XDAYLIGHT_COMPONENT:          return "ICAL_XDAYLIGHT_COMPONENT"
        case ICAL_X_COMPONENT:                  return "ICAL_X_COMPONENT"
        case ICAL_VSCHEDULE_COMPONENT:          return "ICAL_VSCHEDULE_COMPONENT"
        case ICAL_VQUERY_COMPONENT:             return "ICAL_VQUERY_COMPONENT"
        case ICAL_VREPLY_COMPONENT:             return "ICAL_VREPLY_COMPONENT"
        case ICAL_VCAR_COMPONENT:               return "ICAL_VCAR_COMPONENT"
        case ICAL_VCOMMAND_COMPONENT:           return "ICAL_VCOMMAND_COMPONENT"
        case ICAL_XLICINVALID_COMPONENT:        return "ICAL_XLICINVALID_COMPONENT"
        case ICAL_XLICMIMEPART_COMPONENT:       return "ICAL_XLICMIMEPART_COMPONENT"
        case ICAL_VAVAILABILITY_COMPONENT:      return "ICAL_VAVAILABILITY_COMPONENT"
        case ICAL_XAVAILABLE_COMPONENT:         return "ICAL_XAVAILABLE_COMPONENT"
        case ICAL_VPOLL_COMPONENT:              return "ICAL_VPOLL_COMPONENT"
        case ICAL_VVOTER_COMPONENT:             return "ICAL_VVOTER_COMPONENT"
        case ICAL_XVOTE_COMPONENT:              return "ICAL_XVOTE_COMPONENT"
        case ICAL_VPATCH_COMPONENT:             return "ICAL_VPATCH_COMPONENT"
        case ICAL_XPATCH_COMPONENT:             return "ICAL_XPATCH_COMPONENT"
        default:                                return "ICAL_UNKOWN_COMPONENT"
        }
    }
}

// MARK: - icalproperty
extension icalproperty_kind: @retroactive CustomStringConvertible {
    
    /// String
    public var name: String {
        return icalproperty_kind_to_string(self).hub.wrap()
    }
    
    /// String
    public var description: String {
        switch self {
        case ICAL_ANY_PROPERTY:                 return "ICAL_ANY_PROPERTY"
        case ICAL_ACCEPTRESPONSE_PROPERTY:      return "ICAL_ACCEPTRESPONSE_PROPERTY"
        case ICAL_ACKNOWLEDGED_PROPERTY:        return "ICAL_ACKNOWLEDGED_PROPERTY"
        case ICAL_ACTION_PROPERTY:              return "ICAL_ACTION_PROPERTY"
        case ICAL_ALLOWCONFLICT_PROPERTY:       return "ICAL_ALLOWCONFLICT_PROPERTY"
        case ICAL_ATTACH_PROPERTY:              return "ICAL_ATTACH_PROPERTY"
        case ICAL_ATTENDEE_PROPERTY:            return "ICAL_ATTENDEE_PROPERTY"
        case ICAL_BUSYTYPE_PROPERTY:            return "ICAL_BUSYTYPE_PROPERTY"
        case ICAL_CALID_PROPERTY:               return "ICAL_CALID_PROPERTY"
        case ICAL_CALMASTER_PROPERTY:           return "ICAL_CALMASTER_PROPERTY"
        case ICAL_CALSCALE_PROPERTY:            return "ICAL_CALSCALE_PROPERTY"
        case ICAL_CAPVERSION_PROPERTY:          return "ICAL_CAPVERSION_PROPERTY"
        case ICAL_CARLEVEL_PROPERTY:            return "ICAL_CARLEVEL_PROPERTY"
        case ICAL_CARID_PROPERTY:               return "ICAL_CARID_PROPERTY"
        case ICAL_CATEGORIES_PROPERTY:          return "ICAL_CATEGORIES_PROPERTY"
        case ICAL_CLASS_PROPERTY:               return "ICAL_CLASS_PROPERTY"
        case ICAL_CMD_PROPERTY:                 return "ICAL_CMD_PROPERTY"
        case ICAL_COLOR_PROPERTY:               return "ICAL_COLOR_PROPERTY"
        case ICAL_COMMENT_PROPERTY:             return "ICAL_COMMENT_PROPERTY"
        case ICAL_COMPLETED_PROPERTY:           return "ICAL_COMPLETED_PROPERTY"
        case ICAL_COMPONENTS_PROPERTY:          return "ICAL_COMPONENTS_PROPERTY"
        case ICAL_CONFERENCE_PROPERTY:          return "ICAL_CONFERENCE_PROPERTY"
        case ICAL_CONTACT_PROPERTY:             return "ICAL_CONTACT_PROPERTY"
        case ICAL_CREATED_PROPERTY:             return "ICAL_CREATED_PROPERTY"
        case ICAL_CSID_PROPERTY:                return "ICAL_CSID_PROPERTY"
        case ICAL_DATEMAX_PROPERTY:             return "ICAL_DATEMAX_PROPERTY"
        case ICAL_DATEMIN_PROPERTY:             return "ICAL_DATEMIN_PROPERTY"
        case ICAL_DECREED_PROPERTY:             return "ICAL_DECREED_PROPERTY"
        case ICAL_DEFAULTCHARSET_PROPERTY:      return "ICAL_DEFAULTCHARSET_PROPERTY"
        case ICAL_DEFAULTLOCALE_PROPERTY:       return "ICAL_DEFAULTLOCALE_PROPERTY"
        case ICAL_DEFAULTTZID_PROPERTY:         return "ICAL_DEFAULTTZID_PROPERTY"
        case ICAL_DEFAULTVCARS_PROPERTY:        return "ICAL_DEFAULTVCARS_PROPERTY"
        case ICAL_DENY_PROPERTY:                return "ICAL_DENY_PROPERTY"
        case ICAL_DESCRIPTION_PROPERTY:         return "ICAL_DESCRIPTION_PROPERTY"
        case ICAL_DTEND_PROPERTY:               return "ICAL_DTEND_PROPERTY"
        case ICAL_DTSTAMP_PROPERTY:             return "ICAL_DTSTAMP_PROPERTY"
        case ICAL_DTSTART_PROPERTY:             return "ICAL_DTSTART_PROPERTY"
        case ICAL_DUE_PROPERTY:                 return "ICAL_DUE_PROPERTY"
        case ICAL_DURATION_PROPERTY:            return "ICAL_DURATION_PROPERTY"
        case ICAL_ESTIMATEDDURATION_PROPERTY:   return "ICAL_ESTIMATEDDURATION_PROPERTY"
        case ICAL_EXDATE_PROPERTY:              return "ICAL_EXDATE_PROPERTY"
        case ICAL_EXPAND_PROPERTY:              return "ICAL_EXPAND_PROPERTY"
        case ICAL_EXRULE_PROPERTY:              return "ICAL_EXRULE_PROPERTY"
        case ICAL_FREEBUSY_PROPERTY:            return "ICAL_FREEBUSY_PROPERTY"
        case ICAL_GEO_PROPERTY:                 return "ICAL_GEO_PROPERTY"
        case ICAL_GRANT_PROPERTY:               return "ICAL_GRANT_PROPERTY"
        case ICAL_IMAGE_PROPERTY:               return "ICAL_IMAGE_PROPERTY"
        case ICAL_ITIPVERSION_PROPERTY:         return "ICAL_ITIPVERSION_PROPERTY"
        case ICAL_LASTMODIFIED_PROPERTY:        return "ICAL_LASTMODIFIED_PROPERTY"
        case ICAL_LOCATION_PROPERTY:            return "ICAL_LOCATION_PROPERTY"
        case ICAL_MAXCOMPONENTSIZE_PROPERTY:    return "ICAL_MAXCOMPONENTSIZE_PROPERTY"
        case ICAL_MAXDATE_PROPERTY:             return "ICAL_MAXDATE_PROPERTY"
        case ICAL_MAXRESULTS_PROPERTY:          return "ICAL_MAXRESULTS_PROPERTY"
        case ICAL_MAXRESULTSSIZE_PROPERTY:      return "ICAL_MAXRESULTSSIZE_PROPERTY"
        case ICAL_METHOD_PROPERTY:              return "ICAL_METHOD_PROPERTY"
        case ICAL_MINDATE_PROPERTY:             return "ICAL_MINDATE_PROPERTY"
        case ICAL_MULTIPART_PROPERTY:           return "ICAL_MULTIPART_PROPERTY"
        case ICAL_NAME_PROPERTY:                return "ICAL_NAME_PROPERTY"
        case ICAL_ORGANIZER_PROPERTY:           return "ICAL_ORGANIZER_PROPERTY"
        case ICAL_OWNER_PROPERTY:               return "ICAL_OWNER_PROPERTY"
        case ICAL_PATCHDELETE_PROPERTY:         return "ICAL_PATCHDELETE_PROPERTY"
        case ICAL_PATCHORDER_PROPERTY:          return "ICAL_PATCHORDER_PROPERTY"
        case ICAL_PATCHPARAMETER_PROPERTY:      return "ICAL_PATCHPARAMETER_PROPERTY"
        case ICAL_PATCHTARGET_PROPERTY:         return "ICAL_PATCHTARGET_PROPERTY"
        case ICAL_PATCHVERSION_PROPERTY:        return "ICAL_PATCHVERSION_PROPERTY"
        case ICAL_PERCENTCOMPLETE_PROPERTY:     return "ICAL_PERCENTCOMPLETE_PROPERTY"
        case ICAL_PERMISSION_PROPERTY:          return "ICAL_PERMISSION_PROPERTY"
        case ICAL_POLLCOMPLETION_PROPERTY:      return "ICAL_POLLCOMPLETION_PROPERTY"
        case ICAL_POLLITEMID_PROPERTY:          return "ICAL_POLLITEMID_PROPERTY"
        case ICAL_POLLMODE_PROPERTY:            return "ICAL_POLLMODE_PROPERTY"
        case ICAL_POLLPROPERTIES_PROPERTY:      return "ICAL_POLLPROPERTIES_PROPERTY"
        case ICAL_POLLWINNER_PROPERTY:          return "ICAL_POLLWINNER_PROPERTY"
        case ICAL_PRIORITY_PROPERTY:            return "ICAL_PRIORITY_PROPERTY"
        case ICAL_PRODID_PROPERTY:              return "ICAL_PRODID_PROPERTY"
        case ICAL_QUERY_PROPERTY:               return "ICAL_QUERY_PROPERTY"
        case ICAL_QUERYLEVEL_PROPERTY:          return "ICAL_QUERYLEVEL_PROPERTY"
        case ICAL_QUERYID_PROPERTY:             return "ICAL_QUERYID_PROPERTY"
        case ICAL_QUERYNAME_PROPERTY:           return "ICAL_QUERYNAME_PROPERTY"
        case ICAL_RDATE_PROPERTY:               return "ICAL_RDATE_PROPERTY"
        case ICAL_RECURACCEPTED_PROPERTY:       return "ICAL_RECURACCEPTED_PROPERTY"
        case ICAL_RECUREXPAND_PROPERTY:         return "ICAL_RECUREXPAND_PROPERTY"
        case ICAL_RECURLIMIT_PROPERTY:          return "ICAL_RECURLIMIT_PROPERTY"
        case ICAL_RECURRENCEID_PROPERTY:        return "ICAL_RECURRENCEID_PROPERTY"
        case ICAL_REFRESHINTERVAL_PROPERTY:     return "ICAL_REFRESHINTERVAL_PROPERTY"
        case ICAL_RELATEDTO_PROPERTY:           return "ICAL_RELATEDTO_PROPERTY"
        case ICAL_RELCALID_PROPERTY:            return "ICAL_RELCALID_PROPERTY"
        case ICAL_REPEAT_PROPERTY:              return "ICAL_REPEAT_PROPERTY"
        case ICAL_REPLYURL_PROPERTY:            return "ICAL_REPLYURL_PROPERTY"
        case ICAL_REQUESTSTATUS_PROPERTY:       return "ICAL_REQUESTSTATUS_PROPERTY"
        case ICAL_RESOURCES_PROPERTY:           return "ICAL_RESOURCES_PROPERTY"
        case ICAL_RESPONSE_PROPERTY:            return "ICAL_RESPONSE_PROPERTY"
        case ICAL_RESTRICTION_PROPERTY:         return "ICAL_RESTRICTION_PROPERTY"
        case ICAL_RRULE_PROPERTY:               return "ICAL_RRULE_PROPERTY"
        case ICAL_SCOPE_PROPERTY:               return "ICAL_SCOPE_PROPERTY"
        case ICAL_SEQUENCE_PROPERTY:            return "ICAL_SEQUENCE_PROPERTY"
        case ICAL_SOURCE_PROPERTY:              return "ICAL_SOURCE_PROPERTY"
        case ICAL_STATUS_PROPERTY:              return "ICAL_STATUS_PROPERTY"
        case ICAL_STORESEXPANDED_PROPERTY:      return "ICAL_STORESEXPANDED_PROPERTY"
        case ICAL_SUMMARY_PROPERTY:             return "ICAL_SUMMARY_PROPERTY"
        case ICAL_TARGET_PROPERTY:              return "ICAL_TARGET_PROPERTY"
        case ICAL_TASKMODE_PROPERTY:            return "ICAL_TASKMODE_PROPERTY"
        case ICAL_TRANSP_PROPERTY:              return "ICAL_TRANSP_PROPERTY"
        case ICAL_TRIGGER_PROPERTY:             return "ICAL_TRIGGER_PROPERTY"
        case ICAL_TZID_PROPERTY:                return "ICAL_TZID_PROPERTY"
        case ICAL_TZIDALIASOF_PROPERTY:         return "ICAL_TZIDALIASOF_PROPERTY"
        case ICAL_TZNAME_PROPERTY:              return "ICAL_TZNAME_PROPERTY"
        case ICAL_TZOFFSETFROM_PROPERTY:        return "ICAL_TZOFFSETFROM_PROPERTY"
        case ICAL_TZOFFSETTO_PROPERTY:          return "ICAL_TZOFFSETTO_PROPERTY"
        case ICAL_TZUNTIL_PROPERTY:             return "ICAL_TZUNTIL_PROPERTY"
        case ICAL_TZURL_PROPERTY:               return "ICAL_TZURL_PROPERTY"
        case ICAL_UID_PROPERTY:                 return "ICAL_UID_PROPERTY"
        case ICAL_URL_PROPERTY:                 return "ICAL_URL_PROPERTY"
        case ICAL_VERSION_PROPERTY:             return "ICAL_VERSION_PROPERTY"
        case ICAL_VOTER_PROPERTY:               return "ICAL_VOTER_PROPERTY"
        case ICAL_X_PROPERTY:                   return "ICAL_X_PROPERTY"
        case ICAL_XLICCLASS_PROPERTY:           return "ICAL_XLICCLASS_PROPERTY"
        case ICAL_XLICCLUSTERCOUNT_PROPERTY:    return "ICAL_XLICCLUSTERCOUNT_PROPERTY"
        case ICAL_XLICERROR_PROPERTY:           return "ICAL_XLICERROR_PROPERTY"
        case ICAL_XLICMIMECHARSET_PROPERTY:     return "ICAL_XLICMIMECHARSET_PROPERTY"
        case ICAL_XLICMIMECID_PROPERTY:         return "ICAL_XLICMIMECID_PROPERTY"
        case ICAL_XLICMIMECONTENTTYPE_PROPERTY: return "ICAL_XLICMIMECONTENTTYPE_PROPERTY"
        case ICAL_XLICMIMEENCODING_PROPERTY:    return "ICAL_XLICMIMEENCODING_PROPERTY"
        case ICAL_XLICMIMEFILENAME_PROPERTY:    return "ICAL_XLICMIMEFILENAME_PROPERTY"
        case ICAL_XLICMIMEOPTINFO_PROPERTY:     return "ICAL_XLICMIMEOPTINFO_PROPERTY"
        case ICAL_NO_PROPERTY:                  return "ICAL_NO_PROPERTY"
        default:                                return "ICAL_UNKOWN_PROPERTY"
        }
    }
}

extension icalproperty_action: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_ACTION_X:         return "ICAL_ACTION_X"
        case ICAL_ACTION_AUDIO:     return "ICAL_ACTION_AUDIO"
        case ICAL_ACTION_DISPLAY:   return "ICAL_ACTION_DISPLAY"
        case ICAL_ACTION_EMAIL:     return "ICAL_ACTION_EMAIL"
        case ICAL_ACTION_PROCEDURE: return "ICAL_ACTION_PROCEDURE"
        case ICAL_ACTION_NONE:      return "ICAL_ACTION_NONE"
        default:                    return "ICAL_ACTION_UNKOWN"
        }
    }
}

extension icalproperty_busytype: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_BUSYTYPE_X:               return "ICAL_BUSYTYPE_X"
        case ICAL_BUSYTYPE_BUSY:            return "ICAL_BUSYTYPE_BUSY"
        case ICAL_BUSYTYPE_BUSYUNAVAILABLE: return "ICAL_BUSYTYPE_BUSYUNAVAILABLE"
        case ICAL_BUSYTYPE_BUSYTENTATIVE:   return "ICAL_BUSYTYPE_BUSYTENTATIVE"
        case ICAL_BUSYTYPE_NONE:            return "ICAL_BUSYTYPE_NONE"
        default:                            return "ICAL_BUSYTYPE_UNKOWN"
        }
    }
}

extension icalproperty_carlevel: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_CARLEVEL_X:           return "ICAL_CARLEVEL_X"
        case ICAL_CARLEVEL_CARNONE:     return "ICAL_CARLEVEL_CARNONE"
        case ICAL_CARLEVEL_CARMIN:      return "ICAL_CARLEVEL_CARMIN"
        case ICAL_CARLEVEL_CARFULL1:    return "ICAL_CARLEVEL_CARFULL1"
        case ICAL_CARLEVEL_NONE:        return "ICAL_CARLEVEL_NONE"
        default:                        return "ICAL_CARLEVEL_UNKOWN"
        }
    }
}

extension icalproperty_class: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_CLASS_X:              return "ICAL_CLASS_X"
        case ICAL_CLASS_PUBLIC:         return "ICAL_CLASS_PUBLIC"
        case ICAL_CLASS_PRIVATE:        return "ICAL_CLASS_PRIVATE"
        case ICAL_CLASS_CONFIDENTIAL:   return "ICAL_CLASS_CONFIDENTIAL"
        case ICAL_CLASS_NONE:           return "ICAL_CLASS_NONE"
        default:                        return "ICAL_CLASS_UNKOWN"
        }
    }
}

extension icalproperty_cmd: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_CMD_X:                return "ICAL_CMD_X"
        case ICAL_CMD_ABORT:            return "ICAL_CMD_ABORT"
        case ICAL_CMD_CONTINUE:         return "ICAL_CMD_CONTINUE"
        case ICAL_CMD_CREATE:           return "ICAL_CMD_CREATE"
        case ICAL_CMD_DELETE:           return "ICAL_CMD_DELETE"
        case ICAL_CMD_GENERATEUID:      return "ICAL_CMD_GENERATEUID"
        case ICAL_CMD_GETCAPABILITY:    return "ICAL_CMD_GETCAPABILITY"
        case ICAL_CMD_IDENTIFY:         return "ICAL_CMD_IDENTIFY"
        case ICAL_CMD_MODIFY:           return "ICAL_CMD_MODIFY"
        case ICAL_CMD_MOVE:             return "ICAL_CMD_MOVE"
        case ICAL_CMD_REPLY:            return "ICAL_CMD_REPLY"
        case ICAL_CMD_SEARCH:           return "ICAL_CMD_SEARCH"
        case ICAL_CMD_SETLOCALE:        return "ICAL_CMD_SETLOCALE"
        case ICAL_CMD_NONE:             return "ICAL_CMD_NONE"
        default:                        return "ICAL_CMD_UNKOWN"
        }
    }
}

extension icalproperty_method: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_METHOD_X:                 return "ICAL_METHOD_X"
        case ICAL_METHOD_PUBLISH:           return "ICAL_METHOD_PUBLISH"
        case ICAL_METHOD_REQUEST:           return "ICAL_METHOD_REQUEST"
        case ICAL_METHOD_REPLY:             return "ICAL_METHOD_REPLY"
        case ICAL_METHOD_ADD:               return "ICAL_METHOD_ADD"
        case ICAL_METHOD_CANCEL:            return "ICAL_METHOD_CANCEL"
        case ICAL_METHOD_REFRESH:           return "ICAL_METHOD_REFRESH"
        case ICAL_METHOD_COUNTER:           return "ICAL_METHOD_COUNTER"
        case ICAL_METHOD_DECLINECOUNTER:    return "ICAL_METHOD_DECLINECOUNTER"
        case ICAL_METHOD_CREATE:            return "ICAL_METHOD_CREATE"
        case ICAL_METHOD_READ:              return "ICAL_METHOD_READ"
        case ICAL_METHOD_RESPONSE:          return "ICAL_METHOD_RESPONSE"
        case ICAL_METHOD_MOVE:              return "ICAL_METHOD_MOVE"
        case ICAL_METHOD_MODIFY:            return "ICAL_METHOD_MODIFY"
        case ICAL_METHOD_GENERATEUID:       return "ICAL_METHOD_GENERATEUID"
        case ICAL_METHOD_DELETE:            return "ICAL_METHOD_DELETE"
        case ICAL_METHOD_POLLSTATUS:        return "ICAL_METHOD_POLLSTATUS"
        case ICAL_METHOD_NONE:              return "ICAL_METHOD_NONE"
        default:                            return "ICAL_METHOD_UNKOWN"

        }
    }
}

extension icalproperty_pollcompletion: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_POLLCOMPLETION_X:             return "ICAL_POLLCOMPLETION_X"
        case ICAL_POLLCOMPLETION_SERVER:        return "ICAL_POLLCOMPLETION_SERVER"
        case ICAL_POLLCOMPLETION_SERVERSUBMIT:  return "ICAL_POLLCOMPLETION_SERVERSUBMIT"
        case ICAL_POLLCOMPLETION_SERVERCHOICE:  return "ICAL_POLLCOMPLETION_SERVERCHOICE"
        case ICAL_POLLCOMPLETION_CLIENT:        return "ICAL_POLLCOMPLETION_CLIENT"
        case ICAL_POLLCOMPLETION_NONE:          return "ICAL_POLLCOMPLETION_NONE"
        default:                                return "ICAL_POLLCOMPLETION_UNKOWN"
        }
    }
}

extension icalproperty_pollmode: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_POLLMODE_X:       return "ICAL_POLLMODE_X"
        case ICAL_POLLMODE_BASIC:   return "ICAL_POLLMODE_BASIC"
        case ICAL_POLLMODE_NONE:    return "ICAL_POLLMODE_NONE"
        default:                    return "ICAL_POLLMODE_UNKOWN"
        }
    }
}

extension icalproperty_querylevel: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_QUERYLEVEL_X:         return "ICAL_QUERYLEVEL_X"
        case ICAL_QUERYLEVEL_CALQL1:    return "ICAL_QUERYLEVEL_CALQL1"
        case ICAL_QUERYLEVEL_CALQLNONE: return "ICAL_QUERYLEVEL_CALQLNONE"
        case ICAL_QUERYLEVEL_NONE:      return "ICAL_QUERYLEVEL_NONE"
        default:                        return "ICAL_QUERYLEVEL_UNKOWN"
        }
    }
}

extension icalproperty_status: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_STATUS_X:             return "ICAL_STATUS_X"
        case ICAL_STATUS_TENTATIVE:     return "ICAL_STATUS_TENTATIVE"
        case ICAL_STATUS_CONFIRMED:     return "ICAL_STATUS_CONFIRMED"
        case ICAL_STATUS_COMPLETED:     return "ICAL_STATUS_COMPLETED"
        case ICAL_STATUS_NEEDSACTION:   return "ICAL_STATUS_NEEDSACTION"
        case ICAL_STATUS_CANCELLED:     return "ICAL_STATUS_CANCELLED"
        case ICAL_STATUS_INPROCESS:     return "ICAL_STATUS_INPROCESS"
        case ICAL_STATUS_DRAFT:         return "ICAL_STATUS_DRAFT"
        case ICAL_STATUS_FINAL:         return "ICAL_STATUS_FINAL"
        case ICAL_STATUS_SUBMITTED:     return "ICAL_STATUS_SUBMITTED"
        case ICAL_STATUS_PENDING:       return "ICAL_STATUS_PENDING"
        case ICAL_STATUS_FAILED:        return "ICAL_STATUS_FAILED"
        case ICAL_STATUS_DELETED:       return "ICAL_STATUS_DELETED"
        case ICAL_STATUS_NONE:          return "ICAL_STATUS_NONE"
        default:                        return "ICAL_ICAL_STATUS_UNKOWN"
        }
    }
}

extension icalproperty_taskmode: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_TASKMODE_X:                   return "ICAL_TASKMODE_X"
        case ICAL_TASKMODE_AUTOMATICCOMPLETION: return "ICAL_TASKMODE_AUTOMATICCOMPLETION"
        case ICAL_TASKMODE_AUTOMATICFAILURE:    return "ICAL_TASKMODE_AUTOMATICFAILURE"
        case ICAL_TASKMODE_AUTOMATICSTATUS:     return "ICAL_TASKMODE_AUTOMATICSTATUS"
        case ICAL_TASKMODE_NONE:                return "ICAL_TASKMODE_NONE"
        default:                                return "ICAL_TASKMODE_UNKOWN"
        }
    }
}

extension icalproperty_transp: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_TRANSP_X:                     return "ICAL_TRANSP_X"
        case ICAL_TRANSP_OPAQUE:                return "ICAL_TRANSP_OPAQUE"
        case ICAL_TRANSP_OPAQUENOCONFLICT:      return "ICAL_TRANSP_OPAQUENOCONFLICT"
        case ICAL_TRANSP_TRANSPARENT:           return "ICAL_TRANSP_TRANSPARENT"
        case ICAL_TRANSP_TRANSPARENTNOCONFLICT: return "ICAL_TRANSP_TRANSPARENTNOCONFLICT"
        case ICAL_TRANSP_NONE:                  return "ICAL_TRANSP_NONE"
        default:                                return "ICAL_TRANSP_UNKOWN"
        }
    }
}

extension icalproperty_xlicclass: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_XLICCLASS_X:                      return "ICAL_XLICCLASS_X"
        case ICAL_XLICCLASS_PUBLISHNEW:             return "ICAL_XLICCLASS_PUBLISHNEW"
        case ICAL_XLICCLASS_PUBLISHUPDATE:          return "ICAL_XLICCLASS_PUBLISHUPDATE"
        case ICAL_XLICCLASS_PUBLISHFREEBUSY:        return "ICAL_XLICCLASS_PUBLISHFREEBUSY"
        case ICAL_XLICCLASS_REQUESTNEW:             return "ICAL_XLICCLASS_REQUESTNEW"
        case ICAL_XLICCLASS_REQUESTUPDATE:          return "ICAL_XLICCLASS_REQUESTUPDATE"
        case ICAL_XLICCLASS_REQUESTRESCHEDULE:      return "ICAL_XLICCLASS_REQUESTRESCHEDULE"
        case ICAL_XLICCLASS_REQUESTDELEGATE:        return "ICAL_XLICCLASS_REQUESTDELEGATE"
        case ICAL_XLICCLASS_REQUESTNEWORGANIZER:    return "ICAL_XLICCLASS_REQUESTNEWORGANIZER"
        case ICAL_XLICCLASS_REQUESTFORWARD:         return "ICAL_XLICCLASS_REQUESTFORWARD"
        case ICAL_XLICCLASS_REQUESTSTATUS:          return "ICAL_XLICCLASS_REQUESTSTATUS"
        case ICAL_XLICCLASS_REQUESTFREEBUSY:        return "ICAL_XLICCLASS_REQUESTFREEBUSY"
        case ICAL_XLICCLASS_REPLYACCEPT:            return "ICAL_XLICCLASS_REPLYACCEPT"
        case ICAL_XLICCLASS_REPLYDECLINE:           return "ICAL_XLICCLASS_REPLYDECLINE"
        case ICAL_XLICCLASS_REPLYDELEGATE:          return "ICAL_XLICCLASS_REPLYDELEGATE"
        case ICAL_XLICCLASS_REPLYCRASHERACCEPT:     return "ICAL_XLICCLASS_REPLYCRASHERACCEPT"
        case ICAL_XLICCLASS_REPLYCRASHERDECLINE:    return "ICAL_XLICCLASS_REPLYCRASHERDECLINE"
        case ICAL_XLICCLASS_ADDINSTANCE:            return "ICAL_XLICCLASS_ADDINSTANCE"
        case ICAL_XLICCLASS_CANCELEVENT:            return "ICAL_XLICCLASS_CANCELEVENT"
        case ICAL_XLICCLASS_CANCELINSTANCE:         return "ICAL_XLICCLASS_CANCELINSTANCE"
        case ICAL_XLICCLASS_CANCELALL:              return "ICAL_XLICCLASS_CANCELALL"
        case ICAL_XLICCLASS_REFRESH:                return "ICAL_XLICCLASS_REFRESH"
        case ICAL_XLICCLASS_COUNTER:                return "ICAL_XLICCLASS_COUNTER"
        case ICAL_XLICCLASS_DECLINECOUNTER:         return "ICAL_XLICCLASS_DECLINECOUNTER"
        case ICAL_XLICCLASS_MALFORMED:              return "ICAL_XLICCLASS_MALFORMED"
        case ICAL_XLICCLASS_OBSOLETE:               return "ICAL_XLICCLASS_OBSOLETE"
        case ICAL_XLICCLASS_MISSEQUENCED:           return "ICAL_XLICCLASS_MISSEQUENCED"
        case ICAL_XLICCLASS_UNKNOWN:                return "ICAL_XLICCLASS_UNKNOWN"
        case ICAL_XLICCLASS_NONE:                   return "ICAL_XLICCLASS_NONE"
        default:                                    return "ICAL_XLICCLASS_UNKOWN"
        }
    }
}

// MARK: - icalparameter
extension icalparameter_kind: @retroactive CustomStringConvertible {
    
    /// String
    public var name: String {
        return icalparameter_kind_to_string(self).hub.wrap()
    }
    
    /// String
    public var description: String {
        switch self {
        case ICAL_ANY_PARAMETER:                return "ICAL_ANY_PARAMETER"
        case ICAL_ACTIONPARAM_PARAMETER:        return "ICAL_ACTIONPARAM_PARAMETER"
        case ICAL_ALTREP_PARAMETER:             return "ICAL_ALTREP_PARAMETER"
        case ICAL_CHARSET_PARAMETER:            return "ICAL_CHARSET_PARAMETER"
        case ICAL_CN_PARAMETER:                 return "ICAL_CN_PARAMETER"
        case ICAL_CUTYPE_PARAMETER:             return "ICAL_CUTYPE_PARAMETER"
        case ICAL_DELEGATEDFROM_PARAMETER:      return "ICAL_DELEGATEDFROM_PARAMETER"
        case ICAL_DELEGATEDTO_PARAMETER:        return "ICAL_DELEGATEDTO_PARAMETER"
        case ICAL_DIR_PARAMETER:                return "ICAL_DIR_PARAMETER"
        case ICAL_DISPLAY_PARAMETER:            return "ICAL_DISPLAY_PARAMETER"
        case ICAL_EMAIL_PARAMETER:              return "ICAL_EMAIL_PARAMETER"
        case ICAL_ENABLE_PARAMETER:             return "ICAL_ENABLE_PARAMETER"
        case ICAL_ENCODING_PARAMETER:           return "ICAL_ENCODING_PARAMETER"
        case ICAL_FBTYPE_PARAMETER: 			return "ICAL_FBTYPE_PARAMETER"
        case ICAL_FEATURE_PARAMETER:            return "ICAL_FEATURE_PARAMETER"
        case ICAL_FILENAME_PARAMETER:           return "ICAL_FILENAME_PARAMETER"
        case ICAL_FMTTYPE_PARAMETER:            return "ICAL_FMTTYPE_PARAMETER"
        case ICAL_IANA_PARAMETER:               return "ICAL_IANA_PARAMETER"
        case ICAL_ID_PARAMETER:                 return "ICAL_ID_PARAMETER"
        case ICAL_LABEL_PARAMETER:              return "ICAL_LABEL_PARAMETER"
        case ICAL_LANGUAGE_PARAMETER:           return "ICAL_LANGUAGE_PARAMETER"
        case ICAL_LATENCY_PARAMETER:            return "ICAL_LATENCY_PARAMETER"
        case ICAL_LOCAL_PARAMETER:              return "ICAL_LOCAL_PARAMETER"
        case ICAL_LOCALIZE_PARAMETER:           return "ICAL_LOCALIZE_PARAMETER"
        case ICAL_MANAGEDID_PARAMETER:          return "ICAL_MANAGEDID_PARAMETER"
        case ICAL_MEMBER_PARAMETER:             return "ICAL_MEMBER_PARAMETER"
        case ICAL_MODIFIED_PARAMETER:           return "ICAL_MODIFIED_PARAMETER"
        case ICAL_OPTIONS_PARAMETER:            return "ICAL_OPTIONS_PARAMETER"
        case ICAL_PARTSTAT_PARAMETER:           return "ICAL_PARTSTAT_PARAMETER"
        case ICAL_PATCHACTION_PARAMETER:        return "ICAL_PATCHACTION_PARAMETER"
        case ICAL_PUBLICCOMMENT_PARAMETER:      return "ICAL_PUBLICCOMMENT_PARAMETER"
        case ICAL_RANGE_PARAMETER:              return "ICAL_RANGE_PARAMETER"
        case ICAL_REASON_PARAMETER:             return "ICAL_REASON_PARAMETER"
        case ICAL_RELATED_PARAMETER:            return "ICAL_RELATED_PARAMETER"
        case ICAL_RELTYPE_PARAMETER:            return "ICAL_RELTYPE_PARAMETER"
        case ICAL_REQUIRED_PARAMETER:           return "ICAL_REQUIRED_PARAMETER"
        case ICAL_RESPONSE_PARAMETER:           return "ICAL_RESPONSE_PARAMETER"
        case ICAL_ROLE_PARAMETER:               return "ICAL_ROLE_PARAMETER"
        case ICAL_RSVP_PARAMETER:               return "ICAL_RSVP_PARAMETER"
        case ICAL_SCHEDULEAGENT_PARAMETER:      return "ICAL_SCHEDULEAGENT_PARAMETER"
        case ICAL_SCHEDULEFORCESEND_PARAMETER:  return "ICAL_SCHEDULEFORCESEND_PARAMETER"
        case ICAL_SCHEDULESTATUS_PARAMETER:     return "ICAL_SCHEDULESTATUS_PARAMETER"
        case ICAL_SENTBY_PARAMETER:             return "ICAL_SENTBY_PARAMETER"
        case ICAL_SIZE_PARAMETER:               return "ICAL_SIZE_PARAMETER"
        case ICAL_STAYINFORMED_PARAMETER:       return "ICAL_STAYINFORMED_PARAMETER"
        case ICAL_SUBSTATE_PARAMETER:           return "ICAL_SUBSTATE_PARAMETER"
        case ICAL_TZID_PARAMETER:               return "ICAL_TZID_PARAMETER"
        case ICAL_VALUE_PARAMETER:              return "ICAL_VALUE_PARAMETER"
        case ICAL_X_PARAMETER:                  return "ICAL_X_PARAMETER"
        case ICAL_XLICCOMPARETYPE_PARAMETER:    return "ICAL_XLICCOMPARETYPE_PARAMETER"
        case ICAL_XLICERRORTYPE_PARAMETER:      return "ICAL_XLICERRORTYPE_PARAMETER"
        case ICAL_NO_PARAMETER:                 return "ICAL_NO_PARAMETER"
        default:                                return "ICAL_UNKOWN_PARAMETER"
        }
    }
}

extension icalparameter_action: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_ACTIONPARAM_X:        return "ICAL_ACTIONPARAM_X"
        case ICAL_ACTIONPARAM_ASK:      return "ICAL_ACTIONPARAM_ASK"
        case ICAL_ACTIONPARAM_ABORT:    return "ICAL_ACTIONPARAM_ABORT"
        case ICAL_ACTIONPARAM_NONE:     return "ICAL_ACTIONPARAM_NONE"
        default:                        return "ICAL_ACTIONPARAM_UNKOWN"
        }
    }
}

extension icalparameter_cutype: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_CUTYPE_X:             return "ICAL_CUTYPE_X"
        case ICAL_CUTYPE_INDIVIDUAL:    return "ICAL_CUTYPE_INDIVIDUAL"
        case ICAL_CUTYPE_GROUP:         return "ICAL_CUTYPE_GROUP"
        case ICAL_CUTYPE_RESOURCE:      return "ICAL_CUTYPE_RESOURCE"
        case ICAL_CUTYPE_ROOM:          return "ICAL_CUTYPE_ROOM"
        case ICAL_CUTYPE_UNKNOWN:       return "ICAL_CUTYPE_UNKNOWN"
        case ICAL_CUTYPE_NONE:          return "ICAL_CUTYPE_NONE"
        default:                        return "ICAL_CUTYPE_UNKOWN"
        }
    }
}

extension icalparameter_display: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_DISPLAY_X:            return "ICAL_DISPLAY_X"
        case ICAL_DISPLAY_BADGE:        return "ICAL_DISPLAY_BADGE"
        case ICAL_DISPLAY_GRAPHIC:      return "ICAL_DISPLAY_GRAPHIC"
        case ICAL_DISPLAY_FULLSIZE:     return "ICAL_DISPLAY_FULLSIZE"
        case ICAL_DISPLAY_THUMBNAIL:    return "ICAL_DISPLAY_THUMBNAIL"
        case ICAL_DISPLAY_NONE:         return "ICAL_DISPLAY_NONE"
        default:                        return "ICAL_DISPLAY_UNKOWN"
        }
    }
}

extension icalparameter_enable: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_ENABLE_X:     return "ICAL_ENABLE_X"
        case ICAL_ENABLE_TRUE:  return "ICAL_ENABLE_TRUE"
        case ICAL_ENABLE_FALSE: return "ICAL_ENABLE_FALSE"
        case ICAL_ENABLE_NONE:  return "ICAL_ENABLE_NONE"
        default:                return "ICAL_ENABLE_UNKOWN"
        }
    }
}

extension icalparameter_encoding: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_ENCODING_X:       return "ICAL_ENCODING_X"
        case ICAL_ENCODING_8BIT:    return "ICAL_ENCODING_8BIT"
        case ICAL_ENCODING_BASE64:  return "ICAL_ENCODING_BASE64"
        case ICAL_ENCODING_NONE:    return "ICAL_ENCODING_NONE"
        default:                    return "ICAL_ENCODING_UNKOWN"
        }
    }
}

extension icalparameter_fbtype: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_FBTYPE_X:                 return "ICAL_FBTYPE_X"
        case ICAL_FBTYPE_FREE:              return "ICAL_FBTYPE_FREE"
        case ICAL_FBTYPE_BUSY:              return "ICAL_FBTYPE_BUSY"
        case ICAL_FBTYPE_BUSYUNAVAILABLE:   return "ICAL_FBTYPE_BUSYUNAVAILABLE"
        case ICAL_FBTYPE_BUSYTENTATIVE:     return "ICAL_FBTYPE_BUSYTENTATIVE"
        case ICAL_FBTYPE_NONE:              return "ICAL_FBTYPE_NONE"
        default:                            return "ICAL_FBTYPE_UNKOWN"
        }
    }
}

extension icalparameter_feature: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_FEATURE_X:            return "ICAL_FEATURE_X"
        case ICAL_FEATURE_AUDIO:        return "ICAL_FEATURE_AUDIO"
        case ICAL_FEATURE_CHAT:         return "ICAL_FEATURE_CHAT"
        case ICAL_FEATURE_FEED:         return "ICAL_FEATURE_FEED"
        case ICAL_FEATURE_MODERATOR:    return "ICAL_FEATURE_MODERATOR"
        case ICAL_FEATURE_PHONE:        return "ICAL_FEATURE_PHONE"
        case ICAL_FEATURE_SCREEN:       return "ICAL_FEATURE_SCREEN"
        case ICAL_FEATURE_VIDEO:        return "ICAL_FEATURE_VIDEO"
        case ICAL_FEATURE_NONE:         return "ICAL_FEATURE_NONE"
        default:                        return "ICAL_FEATURE_UNKOWN"
        }
    }
}

extension icalparameter_local: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_LOCAL_X:      return "ICAL_LOCAL_X"
        case ICAL_LOCAL_TRUE:   return "ICAL_LOCAL_TRUE"
        case ICAL_LOCAL_FALSE:  return "ICAL_LOCAL_FALSE"
        case ICAL_LOCAL_NONE:   return "ICAL_LOCAL_NONE"
        default:                return "ICAL_LOCAL_UNKOWN"
        }
    }
}

extension icalparameter_partstat: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_PARTSTAT_X:           return "ICAL_PARTSTAT_X"
        case ICAL_PARTSTAT_NEEDSACTION: return "ICAL_PARTSTAT_NEEDSACTION"
        case ICAL_PARTSTAT_ACCEPTED:    return "ICAL_PARTSTAT_ACCEPTED"
        case ICAL_PARTSTAT_DECLINED:    return "ICAL_PARTSTAT_DECLINED"
        case ICAL_PARTSTAT_TENTATIVE:   return "ICAL_PARTSTAT_TENTATIVE"
        case ICAL_PARTSTAT_DELEGATED:   return "ICAL_PARTSTAT_DELEGATED"
        case ICAL_PARTSTAT_COMPLETED:   return "ICAL_PARTSTAT_COMPLETED"
        case ICAL_PARTSTAT_INPROCESS:   return "ICAL_PARTSTAT_INPROCESS"
        case ICAL_PARTSTAT_FAILED:      return "ICAL_PARTSTAT_FAILED"
        case ICAL_PARTSTAT_NONE:        return "ICAL_PARTSTAT_NONE"
        default:                        return "ICAL_PARTSTAT_UNKOWN"
        }
    }
}

extension icalparameter_patchaction: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_PATCHACTION_X:        return "ICAL_PATCHACTION_X"
        case ICAL_PATCHACTION_CREATE:   return "ICAL_PATCHACTION_CREATE"
        case ICAL_PATCHACTION_BYNAME:   return "ICAL_PATCHACTION_BYNAME"
        case ICAL_PATCHACTION_BYVALUE:  return "ICAL_PATCHACTION_BYVALUE"
        case ICAL_PATCHACTION_BYPARAM:  return "ICAL_PATCHACTION_BYPARAM"
        case ICAL_PATCHACTION_NONE:     return "ICAL_PATCHACTION_NONE"
        default:                        return "ICAL_PATCHACTION_UNKOWN"
        }
    }
}

extension icalparameter_range: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_RANGE_X:              return "ICAL_RANGE_X"
        case ICAL_RANGE_THISANDPRIOR:   return "ICAL_RANGE_THISANDPRIOR"
        case ICAL_RANGE_THISANDFUTURE:  return "ICAL_RANGE_THISANDFUTURE"
        case ICAL_RANGE_NONE:           return "ICAL_RANGE_NONE"
        default:                        return "ICAL_RANGE_UNKOWN"
        }
    }
}

extension icalparameter_related: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_RELATED_X:        return "ICAL_RELATED_X"
        case ICAL_RELATED_START:    return "ICAL_RELATED_START"
        case ICAL_RELATED_END:      return "ICAL_RELATED_END"
        case ICAL_RELATED_NONE:     return "ICAL_RELATED_NONE"
        default:                    return "ICAL_RELATED_UNKOWN"
        }
    }
}

extension icalparameter_reltype: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_RELTYPE_X:        return "ICAL_RELTYPE_X"
        case ICAL_RELTYPE_PARENT:   return "ICAL_RELTYPE_PARENT"
        case ICAL_RELTYPE_CHILD:    return "ICAL_RELTYPE_CHILD"
        case ICAL_RELTYPE_SIBLING:  return "ICAL_RELTYPE_SIBLING"
        case ICAL_RELTYPE_POLL:     return "ICAL_RELTYPE_POLL"
        case ICAL_RELTYPE_NONE:     return "ICAL_RELTYPE_NONE"
        default:                    return "ICAL_RELTYPE_UNKOWN"
        }
    }
}

extension icalparameter_required: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_REQUIRED_X:       return "ICAL_REQUIRED_X"
        case ICAL_REQUIRED_TRUE:    return "ICAL_REQUIRED_TRUE"
        case ICAL_REQUIRED_FALSE:   return "ICAL_REQUIRED_FALSE"
        case ICAL_REQUIRED_NONE:    return "ICAL_REQUIRED_NONE"
        default:                    return "ICAL_REQUIRED_UNKOWN"
        }
    }
}

extension icalparameter_role: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_ROLE_X:               return "ICAL_ROLE_X"
        case ICAL_ROLE_CHAIR:           return "ICAL_ROLE_CHAIR"
        case ICAL_ROLE_REQPARTICIPANT:  return "ICAL_ROLE_REQPARTICIPANT"
        case ICAL_ROLE_OPTPARTICIPANT:  return "ICAL_ROLE_OPTPARTICIPANT"
        case ICAL_ROLE_NONPARTICIPANT:  return "ICAL_ROLE_NONPARTICIPANT"
        case ICAL_ROLE_NONE:            return "ICAL_ROLE_NONE"
        default:                        return "ICAL_ROLE_UNKOWN"
        }
    }
}

extension icalparameter_rsvp: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_RSVP_X:       return "ICAL_RSVP_X"
        case ICAL_RSVP_TRUE:    return "ICAL_RSVP_TRUE"
        case ICAL_RSVP_FALSE:   return "ICAL_RSVP_FALSE"
        case ICAL_RSVP_NONE:    return "ICAL_RSVP_NONE"
        default:                return "ICAL_RSVP_UNKOWN"
        }
    }
}

extension icalparameter_scheduleagent: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_SCHEDULEAGENT_X:      return "ICAL_SCHEDULEAGENT_X"
        case ICAL_SCHEDULEAGENT_SERVER: return "ICAL_SCHEDULEAGENT_SERVER"
        case ICAL_SCHEDULEAGENT_CLIENT: return "ICAL_SCHEDULEAGENT_CLIENT"
        case ICAL_SCHEDULEAGENT_NONE:   return "ICAL_SCHEDULEAGENT_NONE"
        default:                        return "ICAL_SCHEDULEAGENT_UNKOWN"
        }
    }
}

extension icalparameter_scheduleforcesend: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_SCHEDULEFORCESEND_X:          return "ICAL_SCHEDULEFORCESEND_X"
        case ICAL_SCHEDULEFORCESEND_REQUEST:    return "ICAL_SCHEDULEFORCESEND_REQUEST"
        case ICAL_SCHEDULEFORCESEND_REPLY:      return "ICAL_SCHEDULEFORCESEND_REPLY"
        case ICAL_SCHEDULEFORCESEND_NONE:       return "ICAL_SCHEDULEFORCESEND_NONE"
        default:                                return "ICAL_SCHEDULEFORCESEND_UNKOWN"
        }
    }
}

extension icalparameter_stayinformed: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_STAYINFORMED_X:       return "ICAL_STAYINFORMED_X"
        case ICAL_STAYINFORMED_TRUE:    return "ICAL_STAYINFORMED_TRUE"
        case ICAL_STAYINFORMED_FALSE:   return "ICAL_STAYINFORMED_FALSE"
        case ICAL_STAYINFORMED_NONE:    return "ICAL_STAYINFORMED_NONE"
        default:                        return "ICAL_STAYINFORMED_UNKOWN"
        }
    }
}

extension icalparameter_substate: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_SUBSTATE_X:           return "ICAL_SUBSTATE_X"
        case ICAL_SUBSTATE_OK:          return "ICAL_SUBSTATE_OK"
        case ICAL_SUBSTATE_ERROR:       return "ICAL_SUBSTATE_ERROR"
        case ICAL_SUBSTATE_SUSPENDED:   return "ICAL_SUBSTATE_SUSPENDED"
        case ICAL_SUBSTATE_NONE:        return "ICAL_SUBSTATE_NONE"
        default:                        return "ICAL_SUBSTATE_UNKOWN"
        }
    }
}

extension icalparameter_value: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_VALUE_X:          return "ICAL_VALUE_X"
        case ICAL_VALUE_BINARY:     return "ICAL_VALUE_BINARY"
        case ICAL_VALUE_BOOLEAN:    return "ICAL_VALUE_BOOLEAN"
        case ICAL_VALUE_DATE:       return "ICAL_VALUE_DATE"
        case ICAL_VALUE_DURATION:   return "ICAL_VALUE_DURATION"
        case ICAL_VALUE_FLOAT:      return "ICAL_VALUE_FLOAT"
        case ICAL_VALUE_INTEGER:    return "ICAL_VALUE_INTEGER"
        case ICAL_VALUE_PERIOD:     return "ICAL_VALUE_PERIOD"
        case ICAL_VALUE_RECUR:      return "ICAL_VALUE_RECUR"
        case ICAL_VALUE_TEXT:       return "ICAL_VALUE_TEXT"
        case ICAL_VALUE_URI:        return "ICAL_VALUE_URI"
        case ICAL_VALUE_ERROR:      return "ICAL_VALUE_ERROR"
        case ICAL_VALUE_DATETIME:   return "ICAL_VALUE_DATETIME"
        case ICAL_VALUE_UTCOFFSET:  return "ICAL_VALUE_UTCOFFSET"
        case ICAL_VALUE_CALADDRESS: return "ICAL_VALUE_CALADDRESS"
        case ICAL_VALUE_NONE:       return "ICAL_VALUE_NONE"
        default:                    return "ICAL_VALUE_UNKOWN"
        }
    }
}

extension icalparameter_xliccomparetype: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_XLICCOMPARETYPE_X:            return "ICAL_XLICCOMPARETYPE_X"
        case ICAL_XLICCOMPARETYPE_EQUAL:        return "ICAL_XLICCOMPARETYPE_EQUAL"
        case ICAL_XLICCOMPARETYPE_NOTEQUAL:     return "ICAL_XLICCOMPARETYPE_NOTEQUAL"
        case ICAL_XLICCOMPARETYPE_LESS:         return "ICAL_XLICCOMPARETYPE_LESS"
        case ICAL_XLICCOMPARETYPE_GREATER:      return "ICAL_XLICCOMPARETYPE_GREATER"
        case ICAL_XLICCOMPARETYPE_LESSEQUAL:    return "ICAL_XLICCOMPARETYPE_LESSEQUAL"
        case ICAL_XLICCOMPARETYPE_GREATEREQUAL: return "ICAL_XLICCOMPARETYPE_GREATEREQUAL"
        case ICAL_XLICCOMPARETYPE_REGEX:        return "ICAL_XLICCOMPARETYPE_REGEX"
        case ICAL_XLICCOMPARETYPE_ISNULL:       return "ICAL_XLICCOMPARETYPE_ISNULL"
        case ICAL_XLICCOMPARETYPE_ISNOTNULL:    return "ICAL_XLICCOMPARETYPE_ISNOTNULL"
        case ICAL_XLICCOMPARETYPE_NONE:         return "ICAL_XLICCOMPARETYPE_NONE"
        default:                                return "ICAL_XLICCOMPARETYPE_UNKOWN"
        }
    }
}

extension icalparameter_xlicerrortype: @retroactive CustomStringConvertible {
    /// String
    public var description: String {
        switch self {
        case ICAL_XLICERRORTYPE_X:                          return "ICAL_XLICERRORTYPE_X"
        case ICAL_XLICERRORTYPE_COMPONENTPARSEERROR:        return "ICAL_XLICERRORTYPE_COMPONENTPARSEERROR"
        case ICAL_XLICERRORTYPE_PROPERTYPARSEERROR:         return "ICAL_XLICERRORTYPE_PROPERTYPARSEERROR"
        case ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR:    return "ICAL_XLICERRORTYPE_PARAMETERNAMEPARSEERROR"
        case ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR:   return "ICAL_XLICERRORTYPE_PARAMETERVALUEPARSEERROR"
        case ICAL_XLICERRORTYPE_VALUEPARSEERROR:            return "ICAL_XLICERRORTYPE_VALUEPARSEERROR"
        case ICAL_XLICERRORTYPE_INVALIDITIP:                return "ICAL_XLICERRORTYPE_INVALIDITIP"
        case ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR:       return "ICAL_XLICERRORTYPE_UNKNOWNVCALPROPERROR"
        case ICAL_XLICERRORTYPE_MIMEPARSEERROR:             return "ICAL_XLICERRORTYPE_MIMEPARSEERROR"
        case ICAL_XLICERRORTYPE_VCALPROPPARSEERROR:         return "ICAL_XLICERRORTYPE_VCALPROPPARSEERROR"
        case ICAL_XLICERRORTYPE_NONE:                       return "ICAL_XLICERRORTYPE_NONE"
        default:                                            return "ICAL_XLICERRORTYPE_UNKOWN"
        }
    }
}

// MARK: - icalvalue
extension icalvalue_kind: @retroactive CustomStringConvertible {
    
    /// String
    public var name: String {
        return description.replacingOccurrences(of: "ICAL_", with: "").replacingOccurrences(of: "_VALUE", with: "")
    }
    
    /// String
    public var description: String {
        switch self {
        case ICAL_ANY_VALUE:            return "ICAL_ANY_VALUE"
        case ICAL_ACTION_VALUE:         return "ICAL_ACTION_VALUE"
        case ICAL_ATTACH_VALUE:         return "ICAL_ATTACH_VALUE"
        case ICAL_BINARY_VALUE:         return "ICAL_BINARY_VALUE"
        case ICAL_BOOLEAN_VALUE:        return "ICAL_BOOLEAN_VALUE"
        case ICAL_BUSYTYPE_VALUE:       return "ICAL_BUSYTYPE_VALUE"
        case ICAL_CALADDRESS_VALUE:     return "ICAL_CALADDRESS_VALUE"
        case ICAL_CARLEVEL_VALUE:       return "ICAL_CARLEVEL_VALUE"
        case ICAL_CLASS_VALUE:          return "ICAL_CLASS_VALUE"
        case ICAL_CMD_VALUE:            return "ICAL_CMD_VALUE"
        case ICAL_DATE_VALUE:           return "ICAL_DATE_VALUE"
        case ICAL_DATETIME_VALUE:       return "ICAL_DATETIME_VALUE"
        case ICAL_DATETIMEDATE_VALUE:   return "ICAL_DATETIMEDATE_VALUE"
        case ICAL_DATETIMEPERIOD_VALUE: return "ICAL_DATETIMEPERIOD_VALUE"
        case ICAL_DURATION_VALUE:       return "ICAL_DURATION_VALUE"
        case ICAL_FLOAT_VALUE:          return "ICAL_FLOAT_VALUE"
        case ICAL_GEO_VALUE:            return "ICAL_GEO_VALUE"
        case ICAL_INTEGER_VALUE:        return "ICAL_INTEGER_VALUE"
        case ICAL_METHOD_VALUE:         return "ICAL_METHOD_VALUE"
        case ICAL_PERIOD_VALUE:         return "ICAL_PERIOD_VALUE"
        case ICAL_POLLCOMPLETION_VALUE: return "ICAL_POLLCOMPLETION_VALUE"
        case ICAL_POLLMODE_VALUE:       return "ICAL_POLLMODE_VALUE"
        case ICAL_QUERY_VALUE:          return "ICAL_QUERY_VALUE"
        case ICAL_QUERYLEVEL_VALUE:     return "ICAL_QUERYLEVEL_VALUE"
        case ICAL_RECUR_VALUE:          return "ICAL_RECUR_VALUE"
        case ICAL_REQUESTSTATUS_VALUE:  return "ICAL_REQUESTSTATUS_VALUE"
        case ICAL_STATUS_VALUE:         return "ICAL_STATUS_VALUE"
        case ICAL_STRING_VALUE:         return "ICAL_STRING_VALUE"
        case ICAL_TASKMODE_VALUE:       return "ICAL_TASKMODE_VALUE"
        case ICAL_TEXT_VALUE:           return "ICAL_TEXT_VALUE"
        case ICAL_TRANSP_VALUE:         return "ICAL_TRANSP_VALUE"
        case ICAL_TRIGGER_VALUE:        return "ICAL_TRIGGER_VALUE"
        case ICAL_URI_VALUE:            return "ICAL_URI_VALUE"
        case ICAL_UTCOFFSET_VALUE:      return "ICAL_UTCOFFSET_VALUE"
        case ICAL_X_VALUE:              return "ICAL_X_VALUE"
        case ICAL_XLICCLASS_VALUE:      return "ICAL_XLICCLASS_VALUE"
        case ICAL_NO_VALUE:             return "ICAL_NO_VALUE"
        default:                        return "ICAL_UNKOWN_VALUE"
        }
    }
}
