import Testing
@testable import Calendrica

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let newText: String = """
    BEGIN:VCALENDAR
    VERSION:2.0
    PRODID:-//My Organization//My Product//EN
    CALSCALE:GREGORIAN
    METHOD:PUBLISH

    BEGIN:VTIMEZONE
    TZID:America/New_York
    BEGIN:STANDARD
    DTSTART:20221106T020000
    TZOFFSETFROM:-0400
    TZOFFSETTO:-0500
    TZNAME:EST
    END:STANDARD
    BEGIN:DAYLIGHT
    DTSTART:20230312T020000
    TZOFFSETFROM:-0500
    TZOFFSETTO:-0400
    TZNAME:EDT
    END:DAYLIGHT
    END:VTIMEZONE

    BEGIN:VEVENT
    UID:uid1@example.com
    DTSTAMP:20231005T120000Z
    DTSTART;TZID=America/New_York:20231010T090000
    DTEND;TZID=America/New_York:20231010T100000
    SUMMARY:Team Meeting
    DESCRIPTION:Quarterly team meeting to discuss project updates.
    LOCATION:123 Corporate Blvd, Business City, BC 67890
    CATEGORIES:WORK,MEETING
    PRIORITY:1
    STATUS:CONFIRMED
    RRULE:FREQ=WEEKLY;INTERVAL=1;BYDAY=MO
    BEGIN:VALARM
    ACTION:DISPLAY
    DESCRIPTION:Reminder
    TRIGGER:-PT15M
    END:VALARM
    END:VEVENT

    BEGIN:VTODO
    UID:uid2@example.com
    DTSTAMP:20231005T120000Z
    DTSTART;TZID=America/New_York:20231012T130000
    DUE;TZID=America/New_York:20231012T150000
    SUMMARY:Complete Project Report
    DESCRIPTION:Finish the quarterly project report and submit it.
    CATEGORIES:WORK,PROJECT
    PRIORITY:2
    STATUS:NEEDS-ACTION
    PERCENT-COMPLETE:50
    BEGIN:VALARM
    ACTION:EMAIL
    DESCRIPTION:Reminder
    TRIGGER:-P1D
    ATTENDEE:mailto:user@example.com
    END:VALARM
    END:VTODO

    BEGIN:VJOURNAL
    UID:uid3@example.com
    DTSTAMP:20231005T120000Z
    DTSTART;VALUE=DATE:20231015
    SUMMARY:Project Kickoff Notes
    DESCRIPTION:Notes from the project kickoff meeting.
    CATEGORIES:WORK,NOTES
    STATUS:FINAL
    END:VJOURNAL

    END:VCALENDAR
    """
}
