import Foundation

// MARK: - Patterns
public struct Patterns: Codable {
    let color: String
    let direction: Int
    let facilities: [String]
    let headsign, id, lineID: String
    let localities: [String]
    let municipalities: [String]
    let path: [Path]
    let routeID, shapeID, shortName, textColor: String
    let trips: [Trip]
    let validOn: [String]

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
    let allowDropOff, allowPickup: Bool
    let distanceDelta: Double
    let stop: Stop
    let stopSequence: Int

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
    let calendarDescription, calendarID: String
    let dates: [String]
    let id: String
    let schedule: [Schedule]

    enum CodingKeys: String, CodingKey {
        case calendarDescription = "calendar_description"
        case calendarID = "calendar_id"
        case dates, id, schedule
    }
}

// MARK: - Schedule
public struct Schedule: Codable {
    let arrivalTime, arrivalTimeOperation, stopID: String
    let stopSequence: Int
    let travelTime: String

    enum CodingKeys: String, CodingKey {
        case arrivalTime = "arrival_time"
        case arrivalTimeOperation = "arrival_time_operation"
        case stopID = "stop_id"
        case stopSequence = "stop_sequence"
        case travelTime = "travel_time"
    }
}
