import Foundation

public typealias Vehicles = [Vehicle]

// MARK: - Vehicle
public struct Vehicle: Codable {
    let bearing: Int
    let blockID: String
    let currentStatus: CurrentStatus
    let id: String
    let lat: Double
    let lineID: String
    let lon: Double
    let patternID, routeID: String
    let scheduleRelationship: ScheduleRelationship
    let shiftID: String
    let speed: Double
    let stopID: String
    let timestamp: Int
    let tripID: String

    enum CodingKeys: String, CodingKey {
        case bearing
        case blockID = "block_id"
        case currentStatus = "current_status"
        case id, lat
        case lineID = "line_id"
        case lon
        case patternID = "pattern_id"
        case routeID = "route_id"
        case scheduleRelationship = "schedule_relationship"
        case shiftID = "shift_id"
        case speed
        case stopID = "stop_id"
        case timestamp
        case tripID = "trip_id"
    }
}

public enum CurrentStatus: String, Codable {
    case inTransitTo = "IN_TRANSIT_TO"
    case incomingAt = "INCOMING_AT"
    case stoppedAt = "STOPPED_AT"
}

public enum ScheduleRelationship: String, Codable {
    case scheduled = "SCHEDULED"
}
