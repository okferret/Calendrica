//
//  Property.swift
//  Calendrica
//
//  Created by okferret on 2025/3/14.
//

import Foundation
import libical
import CoreLocation

/// Property
public class Property: NSObject {

    // MARK: - 公开属性
    
    /// Kind
    public var kind: Kind { .init(rawValue: icalproperty_isa(rawValue)) }
    
    /// Array<Parameter>
    public var parameters: Array<Parameter> {
        return icalproperty_find_all_parameters(of: rawValue, kind: .ANY)
    }
    
    /// String
    public override var description: String {
        return icalproperty_as_ical_string(rawValue).hub.wrap()
    }
    
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
        if icalproperty_get_parent(rawValue) == .none {
            icalproperty_free(rawValue)
        }
    }
}

extension Property {
    
    /// add parameter
    /// - Parameter parameter: Parameter
    /// - Returns: Parameter
    @discardableResult
    public func addParameter(_ parameter: Parameter) -> Parameter {
        icalproperty_add_parameter(rawValue, parameter.rawValue)
        return parameter
    }
    
    /// remove
    /// - Parameter parameter: Parameter
    public func rmParameter(_ parameter: Parameter) {
        icalproperty_remove_parameter_by_ref(rawValue, parameter.rawValue)
    }
    
    /// remove by kind
    /// - Parameter kind: Parameter.Kind
    public func rmParameter(by kind: Parameter.Kind) {
        icalproperty_remove_parameter_by_kind(rawValue, kind.rawValue)
    }
    
    /// remove parameter by name
    /// - Parameter name: String
    public func rmParameter(by name: String) {
        icalproperty_remove_parameter_by_name(rawValue, name)
    }
    
    /// parameters of kind
    /// - Parameter kind: Parameter.Kind
    /// - Returns: Array<Parameter>
    public func parameters(of kind: Parameter.Kind) -> Array<Parameter> {
        return icalproperty_find_all_parameters(of: rawValue, kind: kind)
    }
    
    /// parameter of kind
    /// - Parameter kind: Parameter.Kind
    /// - Returns: Optional<Parameter>
    public func parameter(of kind: Parameter.Kind) -> Optional<Parameter> {
        return icalproperty_find_first_parameter(of: rawValue, kind: kind)
    }
    
    /// value
    /// - Returns: Optional<T>
    public func value<T>() -> Optional<T> {
        return value(kind: kind) as? T
    }
    
    /// value
    /// - Returns: Optional<Any>
    public func value() -> Optional<Any> {
        return value(kind: kind)
    }
    
    /// setValue
    /// - Parameter value: T
    public func setValue<T>(_ value: T) {
        setValue(value, kind: kind)
    }
    
    /// setValue
    /// - Parameter value: Any
    public func setValue(_ value: Any) {
        setValue(value, kind: kind)
    }
}

extension Property {

    /// ACCEPT-RESPONSE
    /// - Parameter acceptResponse: String
    public convenience init(acceptResponse: String) {
        self.init(rawValue: icalproperty_new_acceptresponse(acceptResponse))
    }

    /// ACKNOWLEDGED
    /// - Parameter acknowledged: Date
    public convenience init(acknowledged: Date) {
        self.init(rawValue: icalproperty_new_acknowledged(acknowledged.hub.icaltimetype()))
    }

    /// ACTION
    /// - Parameter action: Action
    public convenience init(action: Action) {
        self.init(rawValue: icalproperty_new_action(action.rawValue))
    }

    /// ALLOW-CONFLICT
    /// - Parameter allowConflict: String
    public convenience init(allowConflict: String) {
        self.init(rawValue: icalproperty_new_allowconflict(allowConflict))
    }

    /// ATTACH
    /// - Parameter attach: Attachment
    public convenience init(attach: Attachment) {
        self.init(rawValue: icalproperty_new_attach(attach.rawValue))
    }

    /// ATTENDEE
    /// - Parameter attendee: String
    public convenience init(attendee: String) {
        self.init(rawValue: icalproperty_new_attendee(attendee))
    }

    /// BUSYTYPE
    /// - Parameter busyType: BusyType
    public convenience init(busyType: BusyType) {
        self.init(rawValue: icalproperty_new_busytype(busyType.rawValue))
    }
 
    /// CALID
    /// - Parameter calendarID: String
    public convenience init(calid: String) {
        self.init(rawValue: icalproperty_new_calid(calid))
    }

    /// CALMASTER
    /// - Parameter calmaster: String
    public convenience init(calmaster: String) {
        self.init(rawValue: icalproperty_new_calmaster(calmaster))
    }

    /// CALSCALE
    /// - Parameter calscale: String
    public convenience init(calscale: String) {
        self.init(rawValue: icalproperty_new_calscale(calscale))
    }

    /// CAP-VERSION
    /// - Parameter capVersion: String
    public convenience init(capVersion: String) {
        self.init(rawValue: icalproperty_new_capversion(capVersion))
    }

    /// CAR-LEVEL
    /// - Parameter carLevel: CarLevel
    public convenience init(carLevel: CarLevel) {
        self.init(rawValue: icalproperty_new_carlevel(carLevel.rawValue))
    }

    /// CARID
    /// - Parameter carid: String
    public convenience init(carid: String) {
        self.init(rawValue: icalproperty_new_carid(carid))
    }

    /// CATEGORIES
    /// - Parameter categories: String
    public convenience init(categories: String) {
        self.init(rawValue: icalproperty_new_categories(categories))
    }

    /// CLASS
    /// - Parameter xclass: Class
    public convenience init(class xclass: Class) {
        self.init(rawValue: icalproperty_new_class(xclass.rawValue))
    }

    /// CMD
    /// - Parameter command: Command
    public convenience init(command: Command) {
        self.init(rawValue: icalproperty_new_cmd(command.rawValue))
    }

    /// COLOR
    /// - Parameter color: String
    public convenience init(color: String) {
        self.init(rawValue: icalproperty_new_color(color))
    }

    /// COMMENT
    /// - Parameter comment: String
    public convenience init(comment: String) {
        self.init(rawValue: icalproperty_new_comment(comment))
    }

    /// COMPLETED
    /// - Parameter completed: Date
    public convenience init(completed: Date) {
        self.init(rawValue: icalproperty_new_completed(completed.hub.icaltimetype()))
    }

    /// COMPONENTS
    /// - Parameter components: String
    public convenience init(components: String) {
        self.init(rawValue: icalproperty_new_components(components))
    }

    /// CONFERENCE
    /// - Parameter conference: String
    public convenience init(conference: String) {
        self.init(rawValue: icalproperty_new_conference(conference))
    }

    /// CONTACT
    /// - Parameter contact: String
    public convenience init(contact: String) {
        self.init(rawValue: icalproperty_new_contact(contact))
    }

    /// CREATED
    /// - Parameter created: Date
    public convenience init(created: Date) {
        self.init(rawValue: icalproperty_new_created(created.hub.icaltimetype()))
    }

    /// CSID
    /// - Parameter csid: String
    public convenience init(csid: String) {
        self.init(rawValue: icalproperty_new_csid(csid))
    }

    /// DATE-MAX
    /// - Parameter dateMax: Date
    public convenience init(dateMax: Date) {
        self.init(rawValue: icalproperty_new_datemax(dateMax.hub.icaltimetype()))
    }

    /// DATE-MIN
    /// - Parameter dateMin: Date
    public convenience init(dateMin: Date) {
        self.init(rawValue: icalproperty_new_datemin(dateMin.hub.icaltimetype()))
    }

    /// DECREED
    /// - Parameter decreed: String
    public convenience init(decreed: String) {
        self.init(rawValue: icalproperty_new_decreed(decreed))
    }

    /// DEFAULT-CHARSET
    /// - Parameter defaultCharset: String
    public convenience init(defaultCharset: String) {
        self.init(rawValue: icalproperty_new_defaultcharset(defaultCharset))
    }

    /// DEFAULT-LOCALE
    /// - Parameter defaultLocale: String
    public convenience init(defaultLocale: String) {
        self.init(rawValue: icalproperty_new_defaultlocale(defaultLocale))
    }

    /// DEFAULT-TZID
    /// - Parameter defaultTzid: String
    public convenience init(defaultTzid: String) {
        self.init(rawValue: icalproperty_new_defaulttzid(defaultTzid))
    }

    /// DEFAULT-VCARS
    /// - Parameter defaultVcars: String
    public convenience init(defaultVcars: String) {
        self.init(rawValue: icalproperty_new_defaultvcars(defaultVcars))
    }

    /// DENY
    /// - Parameter deny: String
    public convenience init(deny: String) {
        self.init(rawValue: icalproperty_new_deny(deny))
    }

    /// DESCRIPTION
    /// - Parameter description: String
    public convenience init(description: String) {
        self.init(rawValue: icalproperty_new_description(description))
    }

    /// DTEND
    /// - Parameter dtend: Date
    public convenience init(dtend: Date) {
        self.init(rawValue: icalproperty_new_dtend(dtend.hub.icaltimetype()))
    }

    /// DTSTAMP
    /// - Parameter dtstamp: Date
    public convenience init(dtstamp: Date) {
        self.init(rawValue: icalproperty_new_dtstamp(dtstamp.hub.icaltimetype()))
    }

    /// DTSTART
    /// - Parameter dtstart: Date
    public convenience init(dtstart: Date) {
        self.init(rawValue: icalproperty_new_dtstart(dtstart.hub.icaltimetype()))
    }

    /// DUE
    /// - Parameter due: Date
    public convenience init(due: Date) {
        self.init(rawValue: icalproperty_new_due(due.hub.icaltimetype()))
    }

    /// DURATION
    /// - Parameter duration: Duration
    public convenience init(duration: Duration) {
        self.init(rawValue: icalproperty_new_duration(duration.hub.icaldurationtype()))
    }

    /// ESTIMATED-DURATION
    /// - Parameter estimatedDuration: Duration
    public convenience init(estimatedDuration: Duration) {
        self.init(rawValue: icalproperty_new_estimatedduration(estimatedDuration.hub.icaldurationtype()))
    }

    /// EXDATE
    /// - Parameter exdate: Date
    public convenience init(exdate: Date) {
        self.init(rawValue: icalproperty_new_exdate(exdate.hub.icaltimetype()))
    }

    /// EXPAND
    /// - Parameter expand: Int
    public convenience init(expand: Int) {
        self.init(rawValue: icalproperty_new_expand(Int32(expand)))
    }

    /// EXRULE
    /// - Parameter exrule: icalrecurrencetype
    public convenience init(exrule: icalrecurrencetype) {
        self.init(rawValue: icalproperty_new_exrule(exrule))
    }

    /// FREEBUSY
    /// - Parameter freebusy: PeriodType
    public convenience init(freebusy: PeriodType) {
        self.init(rawValue: icalproperty_new_freebusy(freebusy.hub.icalperiodtype()))
    }

    /// GEO
    /// - Parameter geo: CLLocationCoordinate2D
    public convenience init(geo: CLLocationCoordinate2D) {
        self.init(rawValue: icalproperty_new_geo(geo.hub.icalgeotype()))
    }

    /// GRANT
    /// - Parameter grant: String
    public convenience init(grant: String) {
        self.init(rawValue: icalproperty_new_grant(grant))
    }

    /// IMAGE
    /// - Parameter image: Attachment
    public convenience init(image: Attachment) {
        self.init(rawValue: icalproperty_new_image(image.rawValue))
    }

    /// ITIP-VERSION
    /// - Parameter itipVersion: String
    public convenience init(itipVersion: String) {
        self.init(rawValue: icalproperty_new_itipversion(itipVersion))
    }

    /// LAST-MODIFIED
    /// - Parameter lastModified: Date
    public convenience init(lastModified: Date) {
        self.init(rawValue: icalproperty_new_lastmodified(lastModified.hub.icaltimetype()))
    }

    /// LOCATION
    /// - Parameter location: String
    public convenience init(location: String) {
        self.init(rawValue: icalproperty_new_location(location))
    }

    /// MAX-COMPONENT-SIZE
    /// - Parameter maxComponentSize: Int
    public convenience init(maxComponentSize: Int) {
        self.init(rawValue: icalproperty_new_maxcomponentsize(Int32(maxComponentSize)))
    }

    /// MAXDATE
    /// - Parameter maxdate: Date
    public convenience init(maxdate: Date) {
        self.init(rawValue: icalproperty_new_maxdate(maxdate.hub.icaltimetype()))
    }

    /// MAXRESULTS
    /// - Parameter maxresults: Int
    public convenience init(maxresults: Int) {
        self.init(rawValue: icalproperty_new_maxresults(Int32(maxresults)))
    }

    /// MAXRESULTSSIZE
    /// - Parameter maxresultssize: Int
    public convenience init(maxresultssize: Int) {
        self.init(rawValue: icalproperty_new_maxresultssize(Int32(maxresultssize)))
    }

    /// METHOD
    /// - Parameter method: Method
    public convenience init(method: Method) {
        self.init(rawValue: icalproperty_new_method(method.rawValue))
    }

    /// MINDATE
    /// - Parameter mindate: Date
    public convenience init(mindate: Date) {
        self.init(rawValue: icalproperty_new_mindate(mindate.hub.icaltimetype()))
    }

    /// MULTIPART
    /// - Parameter multipart: String
    public convenience init(multipart: String) {
        self.init(rawValue: icalproperty_new_multipart(multipart))
    }

    /// NAME
    /// - Parameter name: String
    public convenience init(name: String) {
        self.init(rawValue: icalproperty_new_name(name))
    }

    /// ORGANIZER
    /// - Parameter organizer: String
    public convenience init(organizer: String) {
        self.init(rawValue: icalproperty_new_organizer(organizer))
    }
    
    /// OWNER
    /// - Parameter owner: String
    public convenience init(owner: String) {
        self.init(rawValue: icalproperty_new_owner(owner))
    }

    /// PATCH-DELETE
    /// - Parameter patchDelete: String
    public convenience init(patchDelete: String) {
        self.init(rawValue: icalproperty_new_patchdelete(patchDelete))
    }

    /// PATCH-ORDER
    /// - Parameter patchOrder: Int
    public convenience init(patchOrder: Int) {
        self.init(rawValue: icalproperty_new_patchorder(Int32(patchOrder)))
    }

    /// PATCH-PARAMETER
    /// - Parameter patchParameter: String
    public convenience init(patchParameter: String) {
        self.init(rawValue: icalproperty_new_patchparameter(patchParameter))
    }

    /// PATCH-TARGET
    /// - Parameter patchTarget: String
    public convenience init(patchTarget: String) {
        self.init(rawValue: icalproperty_new_patchtarget(patchTarget))
    }

    /// PATCH-VERSION
    /// - Parameter patchVersion: String
    public convenience init(patchVersion: String) {
        self.init(rawValue: icalproperty_new_patchversion(patchVersion))
    }

    /// PERCENT-COMPLETE
    /// - Parameter percentComplete: Int
    public convenience init(percentComplete: Int) {
        self.init(rawValue: icalproperty_new_percentcomplete(Int32(percentComplete)))
    }

    /// PERMISSION
    /// - Parameter permission: String
    public convenience init(permission: String) {
        self.init(rawValue: icalproperty_new_permission(permission))
    }

    /// POLL-COMPLETION
    /// - Parameter pollCompletion: PollCompletion
    public convenience init(pollCompletion: PollCompletion) {
        self.init(rawValue: icalproperty_new_pollcompletion(pollCompletion.rawValue))
    }

    /// POLL-ITEM-ID
    /// - Parameter pollItemID: Int
    public convenience init(pollItemID: Int) {
        self.init(rawValue: icalproperty_new_pollitemid(Int32(pollItemID)))
    }

    /// POLL-MODE
    /// - Parameter pollMode: PollMode
    public convenience init(pollMode: PollMode) {
        self.init(rawValue: icalproperty_new_pollmode(pollMode.rawValue))
    }

    /// POLL-PROPERTIES
    /// - Parameter pollProperties: String
    public convenience init(pollProperties: String) {
        self.init(rawValue: icalproperty_new_pollproperties(pollProperties))
    }

    /// POLL-WINNER
    /// - Parameter pollWinner: Int
    public convenience init(pollWinner: Int) {
        self.init(rawValue: icalproperty_new_pollwinner(Int32(pollWinner)))
    }

    /// PRIORITY
    /// - Parameter priority: Int
    public convenience init(priority: Int) {
        self.init(rawValue: icalproperty_new_priority(Int32(priority)))
    }

    /// PRODID
    /// - Parameter prodID: String
    public convenience init(prodID: String) {
        self.init(rawValue: icalproperty_new_prodid(prodID))
    }

    /// QUERY
    /// - Parameter query: String
    public convenience init(query: String) {
        self.init(rawValue: icalproperty_new_query(query))
    }

    /// QUERY-LEVEL
    /// - Parameter queryLevel: QueryLevel
    public convenience init(queryLevel: QueryLevel) {
        self.init(rawValue: icalproperty_new_querylevel(queryLevel.rawValue))
    }

    /// QUERYID
    /// - Parameter queryID: String
    public convenience init(queryID: String) {
        self.init(rawValue: icalproperty_new_queryid(queryID))
    }
    
    /// QUERYNAME
    /// - Parameter queryName: String
    public convenience init(queryName: String) {
        self.init(rawValue: icalproperty_new_queryname(queryName))
    }

    /// RDATE
    /// - Parameter rdate: DateTimePeriodType
    public convenience init(rdate: DateTimePeriodType) {
        self.init(rawValue: icalproperty_new_rdate(rdate.hub.icaldatetimeperiodtype()))
    }

    /// RECUR-ACCEPTED
    /// - Parameter recurAccepted: String
    public convenience init(recurAccepted: String) {
        self.init(rawValue: icalproperty_new_recuraccepted(recurAccepted))
    }

    /// RECUR-EXPAND
    /// - Parameter recurExpand: String
    public convenience init(recurExpand: String) {
        self.init(rawValue: icalproperty_new_recurexpand(recurExpand))
    }

    /// RECUR-LIMIT
    /// - Parameter recurLimit: recurLimit
    public convenience init(recurLimit: String) {
        self.init(rawValue: icalproperty_new_recurlimit(recurLimit))
    }

    /// RECURRENCE-ID
    /// - Parameter recurrenceID: Date
    public convenience init(recurrenceID: Date) {
        self.init(rawValue: icalproperty_new_recurrenceid(recurrenceID.hub.icaltimetype()))
    }

    /// REFRESH-INTERVAL
    /// - Parameter refreshInterval: Duration
    public convenience init(refreshInterval: Duration) {
        self.init(rawValue: icalproperty_new_refreshinterval(refreshInterval.hub.icaldurationtype()))
    }

    /// RELATED-TO
    /// - Parameter relatedTo: String
    public convenience init(relatedTo: String) {
        self.init(rawValue: icalproperty_new_relatedto(relatedTo))
    }

    /// RELCALID
    /// - Parameter relcalID: String
    public convenience init(relcalID: String) {
        self.init(rawValue: icalproperty_new_relcalid(relcalID))
    }

    /// REPEAT
    /// - Parameter xrepeat: Int
    public convenience init(repeat xrepeat: Int) {
        self.init(rawValue: icalproperty_new_repeat(Int32(xrepeat)))
    }

    /// REPLY-URL
    /// - Parameter replyUrl: URL
    public convenience init(replyUrl: URL) {
        self.init(rawValue: icalproperty_new_replyurl(replyUrl.absoluteString))
    }
    
    /// REQUEST-STATUS
    /// - Parameter requeststatus: icalreqstattype
    public convenience init(requeststatus: icalreqstattype) {
        self.init(rawValue: icalproperty_new_requeststatus(requeststatus))
    }
    
    /// RESOURCES
    /// - Parameter resources: String
    public convenience init(resources: String) {
        self.init(rawValue: icalproperty_new_resources(resources))
    }


    /// RESPONSE
    /// - Parameter response: Int
    public convenience init(response: Int) {
        self.init(rawValue: icalproperty_new_response(Int32(response)))
    }

    /// RESTRICTION
    /// - Parameter restriction: String
    public convenience init(restriction: String) {
        self.init(rawValue: icalproperty_new_restriction(restriction))
    }

    /// RRULE
    /// - Parameter rrule: icalrecurrencetype
    public convenience init(rrule: icalrecurrencetype) {
        self.init(rawValue: icalproperty_new_rrule(rrule))
    }

    /// SCOPE
    /// - Parameter scope: String
    public convenience init(scope: String) {
        self.init(rawValue: icalproperty_new_scope(scope))
    }

    /// SEQUENCE
    /// - Parameter sequence: Int
    public convenience init(sequence: Int) {
        self.init(rawValue: icalproperty_new_sequence(Int32(sequence)))
    }

    /// SOURCE
    /// - Parameter source: String
    public convenience init(source: String) {
        self.init(rawValue: icalproperty_new_source(source))
    }

    /// STATUS
    /// - Parameter status: Status
    public convenience init(status: Status) {
        self.init(rawValue: icalproperty_new_status(status.rawValue))
    }

    /// STORES-EXPANDED
    /// - Parameter storesExpanded: String
    public convenience init(storesExpanded: String) {
        self.init(rawValue: icalproperty_new_storesexpanded(storesExpanded))
    }

    /// SUMMARY
    /// - Parameter summary: String
    public convenience init(summary: String) {
        self.init(rawValue: icalproperty_new_summary(summary))
    }

    /// TARGET
    /// - Parameter target: String
    public convenience init(target: String) {
        self.init(rawValue: icalproperty_new_target(target))
    }

    /// TASK-MODE
    /// - Parameter taskMode: TaskMode
    public convenience init(taskMode: TaskMode) {
        self.init(rawValue: icalproperty_new_taskmode(taskMode.rawValue))
    }

    /// TRANSP
    /// - Parameter transp: Transp
    public convenience init(transp: Transp) {
        self.init(rawValue: icalproperty_new_transp(transp.rawValue))
    }

    /// TRIGGER
    /// - Parameter trigger: TriggerType
    public convenience init(trigger: TriggerType) {
        self.init(rawValue: icalproperty_new_trigger(trigger.hub.icaltriggertype()))
    }

    /// TZID
    /// - Parameter tzid: String
    public convenience init(tzid: String) {
        self.init(rawValue: icalproperty_new_tzid(tzid))
    }


    /// TZID-ALIAS-OF
    /// - Parameter tzidAliasOf: String
    public convenience init(tzidAliasOf: String) {
        self.init(rawValue: icalproperty_new_tzidaliasof(tzidAliasOf))
    }

    /// TZNAME
    /// - Parameter tzname: String
    public convenience init(tzname: String) {
        self.init(rawValue: icalproperty_new_tzname(tzname))
    }

    /// TZOFFSETFROM
    /// - Parameter tzoffsetfrom: Int
    public convenience init(tzoffsetfrom: Int) {
        self.init(rawValue: icalproperty_new_tzoffsetfrom(Int32(tzoffsetfrom)))
    }

    /// TZOFFSETTO
    /// - Parameter tzoffsetto: Int
    public convenience init(tzoffsetto: Int) {
        self.init(rawValue: icalproperty_new_tzoffsetto(Int32(tzoffsetto)))
    }
  
    /// TZUNTIL
    /// - Parameter tzuntil: Date
    public convenience init(tzuntil: Date) {
        self.init(rawValue: icalproperty_new_tzuntil(tzuntil.hub.icaltimetype()))
    }

    /// TZURL
    /// - Parameter tzurl: URL
    public convenience init(tzurl: URL) {
        self.init(rawValue: icalproperty_new_tzurl(tzurl.absoluteString))
    }

    /// UID
    /// - Parameter uid: String
    public convenience init(uid: String) {
        self.init(rawValue: icalproperty_new_uid(uid))
    }
    
    /// URL
    /// - Parameter url: URL
    public convenience init(url: URL) {
        self.init(rawValue: icalproperty_new_url(url.absoluteString))
    }

    /// VERSION
    /// - Parameter version: String
    public convenience init(version: String) {
        self.init(rawValue: icalproperty_new_version(version))
    }

    /// VOTER
    /// - Parameter voter: String
    public convenience init(voter: String) {
        self.init(rawValue: icalproperty_new_voter(voter))
    }
    
    /// X
    /// - Parameter x: String
    public convenience init(x: String) {
        self.init(rawValue: icalproperty_new_x(x))
    }
  
    /// X-LIC-CLASS
    /// - Parameter xlicclass: XlicClass
    public convenience init(xlicclass: XlicClass) {
        self.init(rawValue: icalproperty_new_xlicclass(xlicclass.rawValue))
    }

    /// X-LIC-CLUSTERCOUNT
    /// - Parameter xlicclustercount: String
    public convenience init(xlicclustercount: String) {
        self.init(rawValue: icalproperty_new_xlicclustercount(xlicclustercount))
    }

    /// X-LIC-ERROR
    /// - Parameter xlicerror: String
    public convenience init(xlicerror: String) {
        self.init(rawValue: icalproperty_new_xlicerror(xlicerror))
    }

    /// X-LIC-MIMECHARSET
    /// - Parameter xlicmimecharset: String
    public convenience init(xlicmimecharset: String) {
        self.init(rawValue: icalproperty_new_xlicmimecharset(xlicmimecharset))
    }

    /// X-LIC-MIMECID
    /// - Parameter xlicmimecid: String
    public convenience init(xlicmimecid: String) {
        self.init(rawValue: icalproperty_new_xlicmimecid(xlicmimecid))
    }

    /// X-LIC-MIMECONTENTTYPE
    /// - Parameter xlicmimecontenttype: String
    public convenience init(xlicmimecontenttype: String) {
        self.init(rawValue: icalproperty_new_xlicmimecontenttype(xlicmimecontenttype))
    }

    /// X-LIC-MIMEENCODING
    /// - Parameter xlicmimeencoding: String
    public convenience init(xlicmimeencoding: String) {
        self.init(rawValue: icalproperty_new_xlicmimeencoding(xlicmimeencoding))
    }
    
    /// X-LIC-MIMEFILENAME
    /// - Parameter xlicmimefilename: String
    public convenience init(xlicmimefilename: String) {
        self.init(rawValue: icalproperty_new_xlicmimefilename(xlicmimefilename))
    }

    /// X-LIC-MIMEOPTINFO
    /// - Parameter xlicmimeoptinfo: String
    public convenience init(xlicmimeoptinfo: String) {
        self.init(rawValue: icalproperty_new_xlicmimeoptinfo(xlicmimeoptinfo))
    }
}

extension Property {
    
    /// value
    /// - Parameter kind: Kind
    /// - Returns: Optional<Any>
    private func value(kind: Kind) -> Optional<Any> {
        switch kind {
        case .ACCEPTRESPONSE:       return icalproperty_get_acceptresponse(rawValue).hub.wrap()
        case .ACKNOWLEDGED:         return icalproperty_get_acknowledged(rawValue).hub.wrap()
        case .ACTION:               return icalproperty_get_action(rawValue).hub.wrap()
        case .ALLOWCONFLICT:        return icalproperty_get_allowconflict(rawValue).hub.wrap()
        case .ATTENDEE:             return icalproperty_get_attendee(rawValue).hub.wrap()
        case .BUSYTYPE:             return icalproperty_get_busytype(rawValue).hub.wrap()
        case .CALID:                return icalproperty_get_calid(rawValue).hub.wrap()
        case .CALMASTER:            return icalproperty_get_calmaster(rawValue).hub.wrap()
        case .CALSCALE:             return icalproperty_get_calscale(rawValue).hub.wrap()
        case .CAPVERSION:           return icalproperty_get_capversion(rawValue).hub.wrap()
        case .CARLEVEL:             return icalproperty_get_carlevel(rawValue).hub.wrap()
        case .CARID:                return icalproperty_get_carid(rawValue).hub.wrap()
        case .CATEGORIES:           return icalproperty_get_categories(rawValue).hub.wrap()
        case .CLASS:                return icalproperty_get_class(rawValue).hub.wrap()
        case .CMD:                  return icalproperty_get_cmd(rawValue).hub.wrap()
        case .COLOR:                return icalproperty_get_color(rawValue).hub.wrap()
        case .COMMENT:              return icalproperty_get_comment(rawValue).hub.wrap()
        case .COMPLETED:            return icalproperty_get_completed(rawValue).hub.wrap()
        case .COMPONENTS:           return icalproperty_get_components(rawValue).hub.wrap()
        case .CONFERENCE:           return icalproperty_get_conference(rawValue).hub.wrap()
        case .CONTACT:              return icalproperty_get_contact(rawValue).hub.wrap()
        case .CREATED:              return icalproperty_get_created(rawValue).hub.wrap()
        case .CSID:                 return icalproperty_get_csid(rawValue).hub.wrap()
        case .DATEMAX:              return icalproperty_get_datemax(rawValue).hub.wrap()
        case .DATEMIN:              return icalproperty_get_datemin(rawValue).hub.wrap()
        case .DECREED:              return icalproperty_get_decreed(rawValue).hub.wrap()
        case .DEFAULTCHARSET:       return icalproperty_get_defaultcharset(rawValue).hub.wrap()
        case .DEFAULTLOCALE:        return icalproperty_get_defaultlocale(rawValue).hub.wrap()
        case .DEFAULTTZID:          return icalproperty_get_defaulttzid(rawValue).hub.wrap()
        case .DEFAULTVCARS:         return icalproperty_get_defaultvcars(rawValue).hub.wrap()
        case .DENY:                 return icalproperty_get_deny(rawValue).hub.wrap()
        case .DESCRIPTION:          return icalproperty_get_description(rawValue).hub.wrap()
        case .DTEND:                return icalproperty_get_dtend(rawValue).hub.wrap()
        case .DTSTAMP:              return icalproperty_get_dtstamp(rawValue).hub.wrap()
        case .DTSTART:              return icalproperty_get_dtstart(rawValue).hub.wrap()
        case .DUE:                  return icalproperty_get_due(rawValue).hub.wrap()
        case .DURATION:             return icalproperty_get_duration(rawValue).hub.wrap()
        case .ESTIMATEDDURATION:    return icalproperty_get_estimatedduration(rawValue).hub.wrap()
        case .EXDATE:               return icalproperty_get_exdate(rawValue).hub.wrap()
        case .EXPAND:               return icalproperty_get_expand(rawValue).hub.wrap()
        case .EXRULE:               return icalproperty_get_exrule(rawValue)
        case .FREEBUSY:             return icalproperty_get_freebusy(rawValue).hub.wrap()
        case .GEO:                  return icalproperty_get_geo(rawValue).hub.wrap()
        case .GRANT:                return icalproperty_get_grant(rawValue).hub.wrap()
        case .ITIPVERSION:          return icalproperty_get_itipversion(rawValue).hub.wrap()
        case .LASTMODIFIED:         return icalproperty_get_lastmodified(rawValue).hub.wrap()
        case .LOCATION:             return icalproperty_get_location(rawValue).hub.wrap()
        case .MAXCOMPONENTSIZE:     return icalproperty_get_maxcomponentsize(rawValue).hub.wrap()
        case .MAXDATE:              return icalproperty_get_maxdate(rawValue).hub.wrap()
        case .MAXRESULTS:           return icalproperty_get_maxresults(rawValue).hub.wrap()
        case .MAXRESULTSSIZE:       return icalproperty_get_maxresultssize(rawValue).hub.wrap()
        case .METHOD:               return icalproperty_get_method(rawValue).hub.wrap()
        case .MINDATE:              return icalproperty_get_mindate(rawValue).hub.wrap()
        case .MULTIPART:            return icalproperty_get_multipart(rawValue).hub.wrap()
        case .NAME:                 return icalproperty_get_name(rawValue).hub.wrap()
        case .ORGANIZER:            return icalproperty_get_organizer(rawValue).hub.wrap()
        case .OWNER:                return icalproperty_get_owner(rawValue).hub.wrap()
        case .PATCHDELETE:          return icalproperty_get_patchdelete(rawValue).hub.wrap()
        case .PATCHORDER:           return icalproperty_get_patchorder(rawValue).hub.wrap()
        case .PATCHPARAMETER:       return icalproperty_get_patchparameter(rawValue).hub.wrap()
        case .PATCHTARGET:          return icalproperty_get_patchtarget(rawValue).hub.wrap()
        case .PATCHVERSION:         return icalproperty_get_patchversion(rawValue).hub.wrap()
        case .PERCENTCOMPLETE:      return icalproperty_get_percentcomplete(rawValue).hub.wrap()
        case .PERMISSION:           return icalproperty_get_permission(rawValue).hub.wrap()
        case .POLLCOMPLETION:       return icalproperty_get_pollcompletion(rawValue).hub.wrap()
        case .POLLITEMID:           return icalproperty_get_pollitemid(rawValue).hub.wrap()
        case .POLLMODE:             return icalproperty_get_pollmode(rawValue).hub.wrap()
        case .POLLPROPERTIES:       return icalproperty_get_pollproperties(rawValue).hub.wrap()
        case .POLLWINNER:           return icalproperty_get_pollwinner(rawValue).hub.wrap()
        case .PRIORITY:             return icalproperty_get_priority(rawValue).hub.wrap()
        case .PRODID:               return icalproperty_get_prodid(rawValue).hub.wrap()
        case .QUERY:                return icalproperty_get_query(rawValue).hub.wrap()
        case .QUERYLEVEL:           return icalproperty_get_querylevel(rawValue).hub.wrap()
        case .QUERYID:              return icalproperty_get_queryid(rawValue).hub.wrap()
        case .QUERYNAME:            return icalproperty_get_queryname(rawValue).hub.wrap()
        case .RDATE:                return icalproperty_get_rdate(rawValue).hub.wrap()
        case .RECURACCEPTED:        return icalproperty_get_recuraccepted(rawValue).hub.wrap()
        case .RECUREXPAND:          return icalproperty_get_recurexpand(rawValue).hub.wrap()
        case .RECURLIMIT:           return icalproperty_get_recurlimit(rawValue).hub.wrap()
        case .RECURRENCEID:         return icalproperty_get_recurrenceid(rawValue).hub.wrap()
        case .REFRESHINTERVAL:      return icalproperty_get_refreshinterval(rawValue).hub.wrap()
        case .RELATEDTO:            return icalproperty_get_relatedto(rawValue).hub.wrap()
        case .RELCALID:             return icalproperty_get_relcalid(rawValue).hub.wrap()
        case .REPEAT:               return icalproperty_get_repeat(rawValue).hub.wrap()
        case .REPLYURL:             return icalproperty_get_replyurl(rawValue).hub.wrap().hub.toURL()
        case .REQUESTSTATUS:        return icalproperty_get_requeststatus(rawValue)
        case .RESOURCES:            return icalproperty_get_resources(rawValue).hub.wrap()
        case .RESPONSE:             return icalproperty_get_response(rawValue).hub.wrap()
        case .RESTRICTION:          return icalproperty_get_restriction(rawValue).hub.wrap()
        case .RRULE:                return icalproperty_get_rrule(rawValue)
        case .SCOPE:                return icalproperty_get_scope(rawValue).hub.wrap()
        case .SEQUENCE:             return icalproperty_get_sequence(rawValue).hub.wrap()
        case .SOURCE:               return icalproperty_get_source(rawValue).hub.wrap()
        case .STATUS:               return icalproperty_get_status(rawValue).hub.wrap()
        case .STORESEXPANDED:       return icalproperty_get_storesexpanded(rawValue).hub.wrap()
        case .SUMMARY:              return icalproperty_get_summary(rawValue).hub.wrap()
        case .TARGET:               return icalproperty_get_target(rawValue).hub.wrap()
        case .TASKMODE:             return icalproperty_get_taskmode(rawValue).hub.wrap()
        case .TRANSP:               return icalproperty_get_transp(rawValue).hub.wrap()
        case .TRIGGER:              return icalproperty_get_trigger(rawValue).hub.wrap()
        case .TZID:                 return icalproperty_get_tzid(rawValue).hub.wrap()
        case .TZIDALIASOF:          return icalproperty_get_tzidaliasof(rawValue).hub.wrap()
        case .TZNAME:               return icalproperty_get_tzname(rawValue).hub.wrap()
        case .TZOFFSETFROM:         return icalproperty_get_tzoffsetfrom(rawValue).hub.wrap()
        case .TZOFFSETTO:           return icalproperty_get_tzoffsetto(rawValue).hub.wrap()
        case .TZUNTIL:              return icalproperty_get_tzuntil(rawValue).hub.wrap()
        case .TZURL:                return icalproperty_get_tzurl(rawValue).hub.wrap().hub.toURL()
        case .UID:                  return icalproperty_get_uid(rawValue).hub.wrap()
        case .URL:                  return icalproperty_get_url(rawValue).hub.wrap().hub.toURL()
        case .VERSION:              return icalproperty_get_version(rawValue).hub.wrap()
        case .VOTER:                return icalproperty_get_voter(rawValue).hub.wrap()
        case .X:                    return icalproperty_get_x(rawValue).hub.wrap()
        case .XLICCLASS:            return icalproperty_get_xlicclass(rawValue).hub.wrap()
        case .XLICCLUSTERCOUNT:     return icalproperty_get_xlicclustercount(rawValue).hub.wrap()
        case .XLICERROR:            return icalproperty_get_xlicerror(rawValue).hub.wrap()
        case .XLICMIMECHARSET:      return icalproperty_get_xlicmimecharset(rawValue).hub.wrap()
        case .XLICMIMECID:          return icalproperty_get_xlicmimecid(rawValue).hub.wrap()
        case .XLICMIMECONTENTTYPE:  return icalproperty_get_xlicmimecontenttype(rawValue).hub.wrap()
        case .XLICMIMEENCODING:     return icalproperty_get_xlicmimeencoding(rawValue).hub.wrap()
        case .XLICMIMEFILENAME:     return icalproperty_get_xlicmimefilename(rawValue).hub.wrap()
        case .XLICMIMEOPTINFO:      return icalproperty_get_xlicmimeoptinfo(rawValue).hub.wrap()
        case .ATTACH:               return Attachment.hub.from(icalproperty_get_attach(rawValue))
        case .IMAGE:                return Attachment(rawValue: icalproperty_get_image(rawValue))
        default:                    return .none
        }
    }
    
    /// setValue
    /// - Parameters:
    ///   - value: Any
    ///   - kind: Kind
    private func setValue(_ value: Any, kind: Kind) {
        switch (kind, value) {
        case (.ACCEPTRESPONSE, let value as String):                    icalproperty_set_acceptresponse(rawValue, value)
        case (.ACKNOWLEDGED, let value as Date):                        icalproperty_set_acknowledged(rawValue, value.hub.icaltimetype())
        case (.ACTION, let value as Property.Action):                   icalproperty_set_action(rawValue, value.rawValue)
        case (.ALLOWCONFLICT, let value as String):                     icalproperty_set_allowconflict(rawValue, value)
        case (.ATTACH, let value as Attachment):                        icalproperty_set_attach(rawValue, value.hub.icalattach())
        case (.ATTENDEE, let value as String):                          icalproperty_set_attendee(rawValue, value)
        case (.BUSYTYPE, let value as Property.BusyType):               icalproperty_set_busytype(rawValue, value.rawValue)
        case (.CALID, let  value as String):                            icalproperty_set_calid(rawValue, value)
        case (.CALMASTER, let value as String):                         icalproperty_set_calmaster(rawValue, value)
        case (.CALSCALE, let value as String):                          icalproperty_set_calscale(rawValue, value)
        case (.CAPVERSION, let value as String):                        icalproperty_set_capversion(rawValue, value)
        case (.CARLEVEL, let value as Property.CarLevel):               icalproperty_set_carlevel(rawValue, value.rawValue)
        case (.CARID, let value as String):                             icalproperty_set_carid(rawValue, value)
        case (.CATEGORIES, let value as String):                        icalproperty_set_categories(rawValue, value)
        case (.CLASS, let value as Property.Class):                     icalproperty_set_class(rawValue, value.rawValue)
        case (.CMD, let value as Property.Command):                     icalproperty_set_cmd(rawValue, value.rawValue)
        case (.COLOR, let value as String):                             icalproperty_set_color(rawValue, value)
        case (.COMMENT, let value as String):                           icalproperty_set_comment(rawValue, value)
        case (.COMPLETED, let value as Date):                           icalproperty_set_completed(rawValue, value.hub.icaltimetype())
        case (.COMPONENTS, let value as String):                        icalproperty_set_components(rawValue, value)
        case (.CONFERENCE, let value as String):                        icalproperty_set_conference(rawValue, value)
        case (.CONTACT, let value as String):                           icalproperty_set_contact(rawValue, value)
        case (.CREATED, let value as Date):                             icalproperty_set_created(rawValue, value.hub.icaltimetype())
        case (.CSID, let value as String):                              icalproperty_set_csid(rawValue, value)
        case (.DATEMAX, let value as Date):                             icalproperty_set_datemax(rawValue, value.hub.icaltimetype())
        case (.DATEMIN, let value as Date):                             icalproperty_set_datemin(rawValue, value.hub.icaltimetype())
        case (.DECREED, let value as String):                           icalproperty_set_decreed(rawValue, value)
        case (.DEFAULTCHARSET, let value as String):                    icalproperty_set_defaultcharset(rawValue, value)
        case (.DEFAULTLOCALE, let value as String):                     icalproperty_set_defaultlocale(rawValue, value)
        case (.DEFAULTTZID, let value as String):                       icalproperty_set_defaulttzid(rawValue, value)
        case (.DEFAULTVCARS, let value as String):                      icalproperty_set_defaultvcars(rawValue, value)
        case (.DENY, let value as String):                              icalproperty_set_deny(rawValue, value)
        case (.DESCRIPTION, let value as String):                       icalproperty_set_description(rawValue, value)
        case (.DTEND, let value as Date):                               icalproperty_set_dtend(rawValue, value.hub.icaltimetype())
        case (.DTSTAMP, let value as Date):                             icalproperty_set_dtstamp(rawValue, value.hub.icaltimetype())
        case (.DTSTART, let value as Date):                             icalproperty_set_dtstart(rawValue, value.hub.icaltimetype())
        case (.DUE, let value as Date):                                 icalproperty_set_due(rawValue, value.hub.icaltimetype())
        case (.DURATION, let value as Duration):                        icalproperty_set_duration(rawValue, value.hub.icaldurationtype())
        case (.ESTIMATEDDURATION, let value as Duration):               icalproperty_set_estimatedduration(rawValue, value.hub.icaldurationtype())
        case (.EXDATE, let value as Date):                              icalproperty_set_exdate(rawValue, value.hub.icaltimetype())
        case (.EXPAND, let value as Int):                               icalproperty_set_expand(rawValue, Int32(value))
        case (.EXPAND, let value as Int32):                             icalproperty_set_expand(rawValue, value)
        case (.EXRULE, let value as icalrecurrencetype):                icalproperty_set_exrule(rawValue, value)
        case (.FREEBUSY, let value as PeriodType):                      icalproperty_set_freebusy(rawValue, value.hub.icalperiodtype())
        case (.GEO, let value as CLLocationCoordinate2D):               icalproperty_set_geo(rawValue, value.hub.icalgeotype())
        case (.GRANT, let value as String):                             icalproperty_set_grant(rawValue, value)
        case (.IMAGE, let value as Attachment):                         icalproperty_set_image(rawValue, value.hub.icalattach())
        case (.ITIPVERSION, let value as String):                       icalproperty_set_itipversion(rawValue, value)
        case (.LASTMODIFIED, let value as Date):                        icalproperty_set_lastmodified(rawValue, value.hub.icaltimetype())
        case (.LOCATION, let value as String):                          icalproperty_set_location(rawValue, value)
        case (.MAXCOMPONENTSIZE, let value as Int):                     icalproperty_set_maxcomponentsize(rawValue, Int32(value))
        case (.MAXCOMPONENTSIZE, let value as Int32):                   icalproperty_set_maxcomponentsize(rawValue, value)
        case (.MAXDATE, let value as Date):                             icalproperty_set_maxdate(rawValue, value.hub.icaltimetype())
        case (.MAXRESULTS, let value as Int):                           icalproperty_set_maxresults(rawValue, Int32(value))
        case (.MAXRESULTS, let value as Int32):                         icalproperty_set_maxresults(rawValue, value)
        case (.MAXRESULTSSIZE, let value as Int):                       icalproperty_set_maxresultssize(rawValue, Int32(value))
        case (.MAXRESULTSSIZE, let value as Int32):                     icalproperty_set_maxresultssize(rawValue, value)
        case (.METHOD, let value as Property.Method):                   icalproperty_set_method(rawValue, value.rawValue)
        case (.MINDATE, let value as Date):                             icalproperty_set_mindate(rawValue, value.hub.icaltimetype())
        case (.MULTIPART, let value as String):                         icalproperty_set_multipart(rawValue, value)
        case (.NAME, let value as String):                              icalproperty_set_name(rawValue, value)
        case (.ORGANIZER, let value as String):                         icalproperty_set_organizer(rawValue, value)
        case (.OWNER, let value as String):                             icalproperty_set_owner(rawValue, value)
        case (.PATCHDELETE, let value as String):                       icalproperty_set_patchdelete(rawValue, value)
        case (.PATCHORDER, let value as Int):                           icalproperty_set_patchorder(rawValue, Int32(value))
        case (.PATCHORDER, let value as Int32):                         icalproperty_set_patchorder(rawValue, value)
        case (.PATCHPARAMETER, let value as String):                    icalproperty_set_patchparameter(rawValue, value)
        case (.PATCHTARGET, let value as String):                       icalproperty_set_patchtarget(rawValue, value)
        case (.PATCHVERSION, let value as String):                      icalproperty_set_patchversion(rawValue, value)
        case (.PERCENTCOMPLETE, let value as Int):                      icalproperty_set_percentcomplete(rawValue, Int32(value))
        case (.PERCENTCOMPLETE, let value as Int32):                    icalproperty_set_percentcomplete(rawValue, value)
        case (.PERMISSION, let value as String):                        icalproperty_set_permission(rawValue, value)
        case (.POLLCOMPLETION, let value as Property.PollCompletion):   icalproperty_set_pollcompletion(rawValue, value.rawValue)
        case (.POLLITEMID, let value as Int):                           icalproperty_set_pollitemid(rawValue, Int32(value))
        case (.POLLITEMID, let value as Int32):                         icalproperty_set_pollitemid(rawValue, value)
        case (.POLLMODE, let value as Property.PollMode):               icalproperty_set_pollmode(rawValue, value.rawValue)
        case (.POLLPROPERTIES, let value as String):                    icalproperty_set_pollproperties(rawValue, value)
        case (.POLLWINNER, let value as Int):                           icalproperty_set_pollwinner(rawValue, Int32(value))
        case (.POLLWINNER, let value as Int32):                         icalproperty_set_pollwinner(rawValue, value)
        case (.PRIORITY, let value as Int):                             icalproperty_set_priority(rawValue, Int32(value))
        case (.PRIORITY, let value as Int32):                           icalproperty_set_priority(rawValue, value)
        case (.PRODID, let value as String):                            icalproperty_set_prodid(rawValue, value)
        case (.QUERY, let value as String):                             icalproperty_set_query(rawValue, value)
        case (.QUERYLEVEL, let value as Property.QueryLevel):           icalproperty_set_querylevel(rawValue, value.rawValue)
        case (.QUERYID, let value as String):                           icalproperty_set_queryid(rawValue, value)
        case (.QUERYNAME, let value as String):                         icalproperty_set_queryname(rawValue, value)
        case (.RDATE, let value as DateTimePeriodType):                 icalproperty_set_rdate(rawValue, value.hub.icaldatetimeperiodtype())
        case (.RECURACCEPTED, let value as String):                     icalproperty_set_recuraccepted(rawValue, value)
        case (.RECUREXPAND, let value as String):                       icalproperty_set_recurexpand(rawValue, value)
        case (.RECURLIMIT, let value as String):                        icalproperty_set_recurlimit(rawValue, value)
        case (.RECURRENCEID, let value as Date):                        icalproperty_set_recurrenceid(rawValue, value.hub.icaltimetype())
        case (.REFRESHINTERVAL, let value as Duration):                 icalproperty_set_refreshinterval(rawValue, value.hub.icaldurationtype())
        case (.RELATEDTO, let value as String):                         icalproperty_set_relatedto(rawValue, value)
        case (.RELCALID, let value as String):                          icalproperty_set_relcalid(rawValue, value)
        case (.REPEAT, let value as Int):                               icalproperty_set_repeat(rawValue, Int32(value))
        case (.REPEAT, let value as Int32):                             icalproperty_set_repeat(rawValue, value)
        case (.REPLYURL, let value as URL):                             icalproperty_set_replyurl(rawValue, value.absoluteString)
        case (.REPLYURL, let value as String):                          icalproperty_set_replyurl(rawValue, value)
        case (.REQUESTSTATUS, let value as icalreqstattype):            icalproperty_set_requeststatus(rawValue, value)
        case (.RESOURCES, let value as String):                         icalproperty_set_resources(rawValue, value)
        case (.RESPONSE, let value as Int):                             icalproperty_set_response(rawValue, Int32(value))
        case (.RESPONSE, let value as Int32):                           icalproperty_set_response(rawValue, value)
        case (.RESTRICTION, let value as String):                       icalproperty_set_restriction(rawValue, value)
        case (.RRULE, let value as icalrecurrencetype):                 icalproperty_set_rrule(rawValue, value)
        case (.SCOPE, let value as String):                             icalproperty_set_scope(rawValue, value)
        case (.SEQUENCE, let value as Int):                             icalproperty_set_sequence(rawValue, Int32(value))
        case (.SEQUENCE, let value as Int32):                           icalproperty_set_sequence(rawValue, value)
        case (.SOURCE, let value as String):                            icalproperty_set_source(rawValue, value)
        case (.STATUS, let value as Property.Status):                   icalproperty_set_status(rawValue, value.rawValue)
        case (.STORESEXPANDED, let value as String):                    icalproperty_set_storesexpanded(rawValue, value)
        case (.SUMMARY, let value as String):                           icalproperty_set_summary(rawValue, value)
        case (.TARGET, let value as String):                            icalproperty_set_target(rawValue, value)
        case (.TASKMODE, let value as Property.TaskMode):               icalproperty_set_taskmode(rawValue, value.rawValue)
        case (.TRANSP, let value as Property.Transp):                   icalproperty_set_transp(rawValue, value.rawValue)
        case (.TRIGGER, let value as TriggerType):                      icalproperty_set_trigger(rawValue, value.hub.icaltriggertype())
        case (.TZID, let value as String):                              icalproperty_set_tzid(rawValue, value)
        case (.TZIDALIASOF, let value as String):                       icalproperty_set_tzidaliasof(rawValue, value)
        case (.TZNAME, let value as String):                            icalproperty_set_tzname(rawValue, value)
        case (.TZOFFSETFROM, let value as Int):                         icalproperty_set_tzoffsetfrom(rawValue, Int32(value))
        case (.TZOFFSETFROM, let value as Int32):                       icalproperty_set_tzoffsetfrom(rawValue, value)
        case (.TZOFFSETTO, let value as Int):                           icalproperty_set_tzoffsetto(rawValue, Int32(value))
        case (.TZOFFSETTO, let value as Int32):                         icalproperty_set_tzoffsetto(rawValue, value)
        case (.TZUNTIL, let value as Date):                             icalproperty_set_tzuntil(rawValue, value.hub.icaltimetype())
        case (.TZURL, let value as URL):                                icalproperty_set_tzurl(rawValue, value.absoluteString)
        case (.TZURL, let value as String):                             icalproperty_set_tzurl(rawValue, value)
        case (.UID, let value as String):                               icalproperty_set_uid(rawValue, value)
        case (.URL, let value as URL):                                  icalproperty_set_url(rawValue, value.absoluteString)
        case (.URL, let value as String):                               icalproperty_set_url(rawValue, value)
        case (.VERSION, let value as String):                           icalproperty_set_version(rawValue, value)
        case (.VOTER, let value as String):                             icalproperty_set_voter(rawValue, value)
        case (.X, let value as String):                                 icalproperty_set_x(rawValue, value)
        case (.XLICCLASS, let value as Property.XlicClass):             icalproperty_set_xlicclass(rawValue, value.rawValue)
        case (.XLICCLUSTERCOUNT, let value as String):                  icalproperty_set_xlicclustercount(rawValue, value)
        case (.XLICERROR, let value as String):                         icalproperty_set_xlicerror(rawValue, value)
        case (.XLICMIMECHARSET, let value as String):                   icalproperty_set_xlicmimecharset(rawValue, value)
        case (.XLICMIMECID, let value as String):                       icalproperty_set_xlicmimecid(rawValue, value)
        case (.XLICMIMECONTENTTYPE, let value as String):               icalproperty_set_xlicmimecontenttype(rawValue, value)
        case (.XLICMIMEENCODING, let value as String):                  icalproperty_set_xlicmimeencoding(rawValue, value)
        case (.XLICMIMEFILENAME, let value as String):                  icalproperty_set_xlicmimefilename(rawValue, value)
        case (.XLICMIMEOPTINFO, let value as String):                   icalproperty_set_xlicmimeoptinfo(rawValue, value)
        default: break
        }
    }
}
