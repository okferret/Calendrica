//
//  Parameter.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical

/// Parameter
public class Parameter: NSObject {
 
    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalparameter_isa(rawValue)) }
    
    /// String
    public override var description: String {
        return icalparameter_as_ical_string(rawValue).hub.wrap()
    }
    
    // MARK: - 私有属性
    
    /// icalparameter
    internal let rawValue: icalparameter
    
    // MARK: - 生命周期
    
    /// 构建
    /// - Parameter rawValue: icalparameter
    internal init(rawValue: icalparameter) {
        self.rawValue = rawValue
        super.init()
    }
    
    /// 构建
    /// - Parameter rfc5545: String
    public convenience init(rfc5545: String) {
        self.init(rawValue: icalparameter_new_from_string(rfc5545))
    }
    
    /// 构建
    /// - Parameter kind: Kind
    public convenience init(kind: Kind) {
        self.init(rawValue: icalparameter_new(kind.rawValue))
    }
   
}

extension Parameter {
  
    /// value
    /// - Returns: Optional<T>
    public func value<T>() -> Optional<T> {
        return value(kind: kind) as? T
    }
    
    /// setValue
    /// - Parameter value: T
    public func setValue<T>(_ value: T) {
        setValue(value, kind: kind)
    }
}

extension Parameter {

    /// ACTIONPARAM
    /// - Parameter action: Action
    public convenience init(action: Action) {
        self.init(rawValue: icalparameter_new_actionparam(action.rawValue))
    }
    
    /// ALTREP
    /// - Parameter altrep: String
    public convenience init(altrep: String) {
        self.init(rawValue: icalparameter_new_altrep(altrep))
    }
    
    /// CHARSET
    /// - Parameter charset: String
    public convenience init(charset: String) {
        self.init(rawValue: icalparameter_new_charset(charset))
    }
    
    /// CN
    /// - Parameter cn: String
    public convenience init(cn: String) {
        self.init(rawValue: icalparameter_new_cn(cn))
    }
  
    /// CUTYPE
    /// - Parameter cutype: CuType
    public convenience init(cutype: CuType) {
        self.init(rawValue: icalparameter_new_cutype(cutype.rawValue))
    }
 
    /// DELEGATED-FROM
    /// - Parameter delegatedFrom: String
    public convenience init(delegatedFrom: String) {
        self.init(rawValue: icalparameter_new_delegatedfrom(delegatedFrom))
    }

    /// DELEGATED-TO
    /// - Parameter delegatedTo: String
    public convenience init(delegatedTo: String) {
        self.init(rawValue: icalparameter_new_delegatedto(delegatedTo))
    }
 
    /// DIR
    /// - Parameter dir: String
    public convenience init(dir: String) {
        self.init(rawValue: icalparameter_new_dir(dir))
    }
    
    /// DISPLAY
    /// - Parameter display: Display
    public convenience init(display: Display) {
        self.init(rawValue: icalparameter_new_display(display.rawValue))
    }
 
    /// EMAIL
    /// - Parameter email: String
    public convenience init(email: String) {
        self.init(rawValue: icalparameter_new_email(email))
    }

    /// ENABLE
    /// - Parameter enable: Enable
    public convenience init(enable: Enable) {
        self.init(rawValue: icalparameter_new_enable(enable.rawValue))
    }

    /// ENCODING
    /// - Parameter encoding: Encoding
    public convenience init(encoding: Encoding) {
        self.init(rawValue: icalparameter_new_encoding(encoding.rawValue))
    }

    /// FBTYPE
    /// - Parameter fbtype: FbType
    public convenience init(fbtype: FbType) {
        self.init(rawValue: icalparameter_new_fbtype(fbtype.rawValue))
    }
  
    /// FEATURE
    /// - Parameter feature: Feature
    public convenience init(feature: Feature) {
        self.init(rawValue: icalparameter_new_feature(feature.rawValue))
    }
  
    /// FILENAME
    /// - Parameter filename: String
    public convenience init(filename: String) {
        self.init(rawValue: icalparameter_new_filename(filename))
    }
    
    /// FMTTYPE
    /// - Parameter fmttype: String
    public convenience init(fmttype: String) {
        self.init(rawValue: icalparameter_new_fmttype(fmttype))
    }
    
    /// IANA
    /// - Parameter iana: String
    public convenience init(iana: String) {
        self.init(rawValue: icalparameter_new_iana(iana))
    }
    
    /// ID
    /// - Parameter ID: String
    public convenience init(ID: String) {
        self.init(rawValue: icalparameter_new_id(ID))
    }
    
    /// LABEL
    /// - Parameter label: String
    public convenience init(label: String) {
        self.init(rawValue: icalparameter_new_label(label))
    }
  
    /// LANGUAGE
    /// - Parameter language: String
    public convenience init(language: String) {
        self.init(rawValue: icalparameter_new_language(language))
    }

    /// LATENCY
    /// - Parameter latency: String
    public convenience init(latency: String) {
        self.init(rawValue: icalparameter_new_latency(latency))
    }

    /// LOCAL
    /// - Parameter local: Local
    public convenience init(local: Local) {
        self.init(rawValue: icalparameter_new_local(local.rawValue))
    }
    
    /// LOCALIZE
    /// - Parameter localize: String
    public convenience init(localize: String) {
        self.init(rawValue: icalparameter_new_localize(localize))
    }
    
    /// MANAGED-ID
    /// - Parameter managedID: String
    public convenience init(managedID: String) {
        self.init(rawValue: icalparameter_new_managedid(managedID))
    }
    
    /// MEMBER
    /// - Parameter member: String
    public convenience init(member: String) {
        self.init(rawValue: icalparameter_new_member(member))
    }
    
    /// MODIFIED
    /// - Parameter modified: String
    public convenience init(modified: String) {
        self.init(rawValue: icalparameter_new_modified(modified))
    }
 
    /// OPTIONS
    /// - Parameter options: String
    public convenience init(options: String) {
        self.init(rawValue: icalparameter_new_options(options))
    }
    
    /// PARTSTAT
    /// - Parameter partstat: Partstat
    public convenience init(partstat: Partstat) {
        self.init(rawValue: icalparameter_new_partstat(partstat.rawValue))
    }
  
    /// PATCH-ACTION
    /// - Parameter patchAction: PatchAction
    public convenience init(patchAction: PatchAction) {
        self.init(rawValue: icalparameter_new_patchaction(patchAction.rawValue))
    }
 
    /// PUBLIC-COMMENT
    /// - Parameter publicComment: String
    public convenience init(publicComment: String) {
        self.init(rawValue: icalparameter_new_publiccomment(publicComment))
    }
    
    /// RANGE
    /// - Parameter range: Range
    public convenience init(range: Range) {
        self.init(rawValue: icalparameter_new_range(range.rawValue))
    }
    
    /// REASON
    /// - Parameter reason: String
    public convenience init(reason: String) {
        self.init(rawValue: icalparameter_new_reason(reason))
    }
   
    /// RELATED
    /// - Parameter related: Related
    public convenience init(related: Related) {
        self.init(rawValue: icalparameter_new_related(related.rawValue))
    }
   
    /// RELTYPE
    /// - Parameter reltype: RelType
    public convenience init(reltype: RelType) {
        self.init(rawValue: icalparameter_new_reltype(reltype.rawValue))
    }
    
    /// REQUIRED
    /// - Parameter required: Required
    public convenience init(required: Required) {
        self.init(rawValue: icalparameter_new_required(required.rawValue))
    }
 
    /// RESPONSE
    /// - Parameter response: Int
    public convenience init(response: Int) {
        self.init(rawValue: icalparameter_new_response(Int32(response)))
    }
    
    /// RESPONSE
    /// - Parameter response: Int32
    public convenience init(response: Int32) {
        self.init(rawValue: icalparameter_new_response(response))
    }
  
    /// ROLE
    /// - Parameter role: Role
    public convenience init(role: Role) {
        self.init(rawValue: icalparameter_new_role(role.rawValue))
    }
   
    /// RSVP
    /// - Parameter rsvp: RSVP
    public convenience init(rsvp: RSVP) {
        self.init(rawValue: icalparameter_new_rsvp(rsvp.rawValue))
    }
 
    /// SCHEDULE-AGENT
    /// - Parameter scheduleAgent: ScheduleAgent
    public convenience init(scheduleAgent: ScheduleAgent) {
        self.init(rawValue: icalparameter_new_scheduleagent(scheduleAgent.rawValue))
    }
    
    /// SCHEDULE-FORCE-SEND
    /// - Parameter scheduleForceSend: ScheduleForceSend
    public convenience init(scheduleForceSend: ScheduleForceSend) {
        self.init(rawValue: icalparameter_new_scheduleforcesend(scheduleForceSend.rawValue))
    }
   
    /// SCHEDULE-STATUS
    /// - Parameter scheduleStatus: String
    public convenience init(scheduleStatus: String) {
        self.init(rawValue: icalparameter_new_schedulestatus(scheduleStatus))
    }
   
    /// SENT-BY
    /// - Parameter sentBy: String
    public convenience init(sentBy: String) {
        self.init(rawValue: icalparameter_new_sentby(sentBy))
    }
    
    /// SIZE
    /// - Parameter size: String
    public convenience init(size: String) {
        self.init(rawValue: icalparameter_new_size(size))
    }

    /// STAY-INFORMED
    /// - Parameter stayInformed: StayInformed
    public convenience init(stayInformed: StayInformed) {
        self.init(rawValue: icalparameter_new_stayinformed(stayInformed.rawValue))
    }
    
    /// SUBSTATE
    /// - Parameter substate: Substate
    public convenience init(substate: Substate) {
        self.init(rawValue: icalparameter_new_substate(substate.rawValue))
    }
    
    /// TZID
    /// - Parameter tzid: String
    public convenience init(tzid: String) {
        self.init(rawValue: icalparameter_new_tzid(tzid))
    }
 
    /// VALUE
    /// - Parameter value: Value
    public convenience init(value: Value) {
        self.init(rawValue: icalparameter_new_value(value.rawValue))
    }
  
    /// X
    /// - Parameter x: String
    public convenience init(x: String) {
        self.init(rawValue: icalparameter_new_x(x))
    }
    
    /// X-LIC-COMPARETYPE
    /// - Parameter xliccomparetype: XlicCompareType
    public convenience init(xliccomparetype: XlicCompareType) {
        self.init(rawValue: icalparameter_new_xliccomparetype(xliccomparetype.rawValue))
    }
   
    /// X-LIC-ERRORTYPE
    /// - Parameter xlicerrortype: XlicErrorType
    public convenience init(xlicerrortype: XlicErrorType) {
        self.init(rawValue: icalparameter_new_xlicerrortype(xlicerrortype.rawValue))
    }
}

extension Parameter {
    
    /// value
    /// - Parameter kind: Kind
    /// - Returns: Optional<Any>
    private func value(kind: Kind) -> Optional<Any> {
        switch kind {
        case .ACTIONPARAM:          return icalparameter_get_actionparam(rawValue).hub.wrap()
        case .ALTREP:               return icalparameter_get_altrep(rawValue).hub.wrap()
        case .CHARSET:              return icalparameter_get_charset(rawValue).hub.wrap()
        case .CN:                   return icalparameter_get_cn(rawValue).hub.wrap()
        case .CUTYPE:               return icalparameter_get_cutype(rawValue).hub.wrap()
        case .DELEGATEDFROM:        return icalparameter_get_delegatedfrom(rawValue).hub.wrap()
        case .DELEGATEDTO:          return icalparameter_get_delegatedto(rawValue).hub.wrap()
        case .DIR:                  return icalparameter_get_dir(rawValue).hub.wrap()
        case .DISPLAY:              return icalparameter_get_display(rawValue).hub.wrap()
        case .EMAIL:                return icalparameter_get_email(rawValue).hub.wrap()
        case .ENABLE:               return icalparameter_get_enable(rawValue).hub.wrap()
        case .ENCODING:             return icalparameter_get_encoding(rawValue).hub.wrap()
        case .FBTYPE:               return icalparameter_get_fbtype(rawValue).hub.wrap()
        case .FEATURE:              return icalparameter_get_feature(rawValue).hub.wrap()
        case .FILENAME:             return icalparameter_get_filename(rawValue).hub.wrap()
        case .FMTTYPE:              return icalparameter_get_fmttype(rawValue).hub.wrap()
        case .IANA:                 return icalparameter_get_iana(rawValue).hub.wrap()
        case .ID:                   return icalparameter_get_id(rawValue).hub.wrap()
        case .LABEL:                return icalparameter_get_label(rawValue).hub.wrap()
        case .LANGUAGE:             return icalparameter_get_language(rawValue).hub.wrap()
        case .LATENCY:              return icalparameter_get_latency(rawValue).hub.wrap()
        case .LOCAL:                return icalparameter_get_local(rawValue).hub.wrap()
        case .LOCALIZE:             return icalparameter_get_localize(rawValue).hub.wrap()
        case .MANAGEDID:            return icalparameter_get_managedid(rawValue).hub.wrap()
        case .MEMBER:               return icalparameter_get_member(rawValue).hub.wrap()
        case .MODIFIED:             return icalparameter_get_modified(rawValue).hub.wrap()
        case .OPTIONS:              return icalparameter_get_options(rawValue).hub.wrap()
        case .PARTSTAT:             return icalparameter_get_partstat(rawValue).hub.wrap()
        case .PATCHACTION:          return icalparameter_get_patchaction(rawValue).hub.wrap()
        case .PUBLICCOMMENT:        return icalparameter_get_publiccomment(rawValue).hub.wrap()
        case .RANGE:                return icalparameter_get_range(rawValue).hub.wrap()
        case .REASON:               return icalparameter_get_reason(rawValue).hub.wrap()
        case .RELATED:              return icalparameter_get_related(rawValue).hub.wrap()
        case .RELTYPE:              return icalparameter_get_reltype(rawValue).hub.wrap()
        case .REQUIRED:             return icalparameter_get_required(rawValue).hub.wrap()
        case .RESPONSE:             return icalparameter_get_response(rawValue).hub.wrap()
        case .ROLE:                 return icalparameter_get_role(rawValue).hub.wrap()
        case .RSVP:                 return icalparameter_get_rsvp(rawValue).hub.wrap()
        case .SCHEDULEAGENT:        return icalparameter_get_scheduleagent(rawValue).hub.wrap()
        case .SCHEDULEFORCESEND:    return icalparameter_get_scheduleforcesend(rawValue).hub.wrap()
        case .SCHEDULESTATUS:       return icalparameter_get_schedulestatus(rawValue).hub.wrap()
        case .SENTBY:               return icalparameter_get_sentby(rawValue).hub.wrap()
        case .SIZE:                 return icalparameter_get_size(rawValue).hub.wrap()
        case .STAYINFORMED:         return icalparameter_get_stayinformed(rawValue).hub.wrap()
        case .SUBSTATE:             return icalparameter_get_substate(rawValue).hub.wrap()
        case .TZID:                 return icalparameter_get_tzid(rawValue).hub.wrap()
        case .VALUE:                return icalparameter_get_value(rawValue).hub.wrap()
        case .X:                    return icalparameter_get_x(rawValue).hub.wrap()
        case .XLICCOMPARETYPE:      return icalparameter_get_xliccomparetype(rawValue).hub.wrap()
        case .XLICCOMPARETYPE:      return icalparameter_get_xlicerrortype(rawValue).hub.wrap()
        default:                    return .none
        }
    }
    
    /// setValue
    /// - Parameters:
    ///   - value: Any
    ///   - kind: Kind
    private func setValue(_ value: Any, kind: Kind) {
        switch (kind, value) {
        case (.ACTIONPARAM, let value as Parameter.Action):                     icalparameter_set_actionparam(rawValue, value.rawValue)
        case (.ALTREP, let value as String):                                    icalparameter_set_altrep(rawValue, value)
        case (.CHARSET, let value as String):                                   icalparameter_set_charset(rawValue, value)
        case (.CN, let value as String):                                        icalparameter_set_cn(rawValue, value)
        case (.CUTYPE, let value as Parameter.CuType):                          icalparameter_set_cutype(rawValue, value.rawValue)
        case (.DELEGATEDFROM, let value as String):                             icalparameter_set_delegatedfrom(rawValue, value)
        case (.DELEGATEDTO, let value as String):                               icalparameter_set_delegatedto(rawValue, value)
        case (.DIR, let value as String):                                       icalparameter_set_dir(rawValue, value)
        case (.DISPLAY, let value as Parameter.Display):                        icalparameter_set_display(rawValue, value.rawValue)
        case (.EMAIL, let value as String):                                     icalparameter_set_email(rawValue, value)
        case (.ENABLE, let value as Parameter.Enable):                          icalparameter_set_enable(rawValue, value.rawValue)
        case (.ENCODING, let value as Parameter.Encoding):                      icalparameter_set_encoding(rawValue, value.rawValue)
        case (.FBTYPE, let value as Parameter.FbType):                          icalparameter_set_fbtype(rawValue, value.rawValue)
        case (.FEATURE, let value as Parameter.Feature):                        icalparameter_set_feature(rawValue, value.rawValue)
        case (.FILENAME, let value as String):                                  icalparameter_set_filename(rawValue, value)
        case (.FMTTYPE, let value as String):                                   icalparameter_set_fmttype(rawValue, value)
        case (.IANA, let value as String):                                      icalparameter_set_iana(rawValue, value)
        case (.ID, let value as String):                                        icalparameter_set_id(rawValue, value)
        case (.LABEL, let value as String):                                     icalparameter_set_label(rawValue, value)
        case (.LANGUAGE, let value as String):                                  icalparameter_set_language(rawValue, value)
        case (.LATENCY, let value as String):                                   icalparameter_set_latency(rawValue, value)
        case (.LOCAL, let value as Parameter.Local):                            icalparameter_set_local(rawValue, value.rawValue)
        case (.LOCALIZE, let value as String):                                  icalparameter_set_localize(rawValue, value)
        case (.MANAGEDID, let value as String):                                 icalparameter_set_managedid(rawValue, value)
        case (.MEMBER, let value as String):                                    icalparameter_set_member(rawValue, value)
        case (.MODIFIED, let value as String):                                  icalparameter_set_modified(rawValue, value)
        case (.OPTIONS, let value as String):                                   icalparameter_set_options(rawValue, value)
        case (.PARTSTAT, let value as Parameter.Partstat):                      icalparameter_set_partstat(rawValue, value.rawValue)
        case (.PATCHACTION, let value as Parameter.PatchAction):                icalparameter_set_patchaction(rawValue, value.rawValue)
        case (.PUBLICCOMMENT, let value as String):                             icalparameter_set_publiccomment(rawValue, value)
        case (.RANGE, let value as Parameter.Range):                            icalparameter_set_range(rawValue, value.rawValue)
        case (.REASON, let value as String):                                    icalparameter_set_reason(rawValue, value)
        case (.RELATED, let value as Parameter.Related):                        icalparameter_set_related(rawValue, value.rawValue)
        case (.RELTYPE, let value as Parameter.RelType):                        icalparameter_set_reltype(rawValue, value.rawValue)
        case (.REQUIRED, let value as Parameter.Required):                      icalparameter_set_required(rawValue, value.rawValue)
        case (.RESPONSE, let value as Int):                                     icalparameter_set_response(rawValue, Int32(value))
        case (.RESPONSE, let value as Int32):                                   icalparameter_set_response(rawValue, value)
        case (.ROLE, let value as Parameter.Role):                              icalparameter_set_role(rawValue, value.rawValue)
        case (.RSVP, let value as Parameter.RSVP):                              icalparameter_set_rsvp(rawValue, value.rawValue)
        case (.SCHEDULEAGENT, let value as Parameter.ScheduleAgent):            icalparameter_set_scheduleagent(rawValue, value.rawValue)
        case (.SCHEDULEFORCESEND, let value as Parameter.ScheduleForceSend):    icalparameter_set_scheduleforcesend(rawValue, value.rawValue)
        case (.SCHEDULESTATUS, let value as String):                            icalparameter_set_schedulestatus(rawValue, value)
        case (.SENTBY, let value as String):                                    icalparameter_set_schedulestatus(rawValue, value)
        case (.SIZE, let value as String):                                      icalparameter_set_size(rawValue, value)
        case (.STAYINFORMED, let value as Parameter.StayInformed):              icalparameter_set_stayinformed(rawValue, value.rawValue)
        case (.SUBSTATE, let value as Parameter.Substate):                      icalparameter_set_substate(rawValue, value.rawValue)
        case (.TZID, let value as String):                                      icalparameter_set_tzid(rawValue, value)
        case (.VALUE, let value as Parameter.Value):                            icalparameter_set_value(rawValue, value.rawValue)
        case (.X, let value as String):                                         icalparameter_set_x(rawValue, value)
        case (.XLICCOMPARETYPE, let value as Parameter.XlicCompareType):        icalparameter_set_xliccomparetype(rawValue, value.rawValue)
        case (.XLICERRORTYPE, let value as Parameter.XlicErrorType):            icalparameter_set_xlicerrortype(rawValue, value.rawValue)
        default: break
        }
    }
}
