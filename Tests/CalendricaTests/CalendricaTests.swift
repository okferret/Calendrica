import Testing
@testable import Calendrica
import Foundation

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    var newText: String = """
    BEGIN:VCALENDAR
    VERSION:2.0
    PRODID:-//Doubao//Simple iCal Generator//EN
    BEGIN:VEVENT
    DTSTART:20250318T100000Z
    DTEND:20250318T110000Z
    END:VEVENT
    END:VCALENDAR
    """
    
    let cmpt: VCalendar = try parse(rfc5545: newText)
    if let first: VEvent = cmpt.component(of: .VEVENT) {
        let p: Property = .init(attendee: "afsdasdddddd")
        p.addParameter(Parameter(email: "CJNCNCCCC@qq.com"))
        p.addParameter(Parameter(action: .ABORT))
        first.addProperty(p)//.add(Parameter(role: .REQPARTICIPANT))
        first.addProperty(.init(due: Date.init()))
        // cmpt.remove(first)
        if let first: Parameter.Action = first.property(of: .ATTENDEE)?.parameter(of: .ACTIONPARAM)?.value() {
            print(first)
        }
    }

    print(cmpt)
}
