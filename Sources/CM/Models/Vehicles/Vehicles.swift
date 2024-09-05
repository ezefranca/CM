import Foundation

public typealias Vehicles = [Vehicle]

// MARK: - Vehicle
public struct Vehicle: Model {
    public let bearing: Int
    public let blockID: String
    public let currentStatus: String
    public let id: String
    public let lat: Double
    public let lineID: String
    public let lon: Double
    public let patternID, routeID: String
    public let scheduleRelationship: String
    public let shiftID: String
    public let speed: Double
    public let stopID: String
    public let timestamp: Int
    public let tripID: String

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
    
    public static func < (lhs: Vehicle, rhs: Vehicle) -> Bool {
        lhs.id == rhs.id
    }
}
