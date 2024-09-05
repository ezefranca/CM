import Foundation

// MARK: - Patterns
public struct Patterns: Codable {
    public let color: String
    public let direction: Int
    public let facilities: [String]
    public let headsign, id, lineID: String
    public let localities: [String]
    public let municipalities: [String]
    public let path: [Path]
    public let routeID, shapeID, shortName, textColor: String
    public let trips: [Trip]
    public let validOn: [String]

    enum CodingKeys: String, CodingKey {
        case color, direction, facilities, headsign, id
        case lineID = "line_id"
        case localities, municipalities, path
        case routeID = "route_id"
        case shapeID = "shape_id"
        case shortName = "short_name"
        case textColor = "text_color"
        case trips
        case validOn = "valid_on"
    }
}

// MARK: - Path
public struct Path: Codable {
    public let allowDropOff, allowPickup: Bool
    public let distanceDelta: Double
    public let stop: Stop
    public let stopSequence: Int

    enum CodingKeys: String, CodingKey {
        case allowDropOff = "allow_drop_off"
        case allowPickup = "allow_pickup"
        case distanceDelta = "distance_delta"
        case stop
        case stopSequence = "stop_sequence"
    }
}

// MARK: - Trip
public struct Trip: Codable {
    public let calendarDescription, calendarID: String
    public let dates: [String]
    public let id: String
    public let schedule: [Schedule]

    enum CodingKeys: String, CodingKey {
        case calendarDescription = "calendar_description"
        case calendarID = "calendar_id"
        case dates, id, schedule
    }
}

// MARK: - Schedule
public struct Schedule: Codable {
    public let arrivalTime, arrivalTimeOperation, stopID: String
    public let stopSequence: Int
    public let travelTime: String

    enum CodingKeys: String, CodingKey {
        case arrivalTime = "arrival_time"
        case arrivalTimeOperation = "arrival_time_operation"
        case stopID = "stop_id"
        case stopSequence = "stop_sequence"
        case travelTime = "travel_time"
    }
}
