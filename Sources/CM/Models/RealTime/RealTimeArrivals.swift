import Foundation

public typealias RealTimeArrivals = [RealTimeArrival]

// MARK: - RealTimeArrival
public struct RealTimeArrival: Codable {
    let estimatedArrival: String?
    let estimatedArrivalUnix: Int?
    let headsign: String
    let lineID: String
    let observedArrival: String?
    let observedArrivalUnix: Int?
    let patternID: String
    let routeID: String
    let scheduledArrival: String
    let scheduledArrivalUnix, stopSequence: Int
    let tripID: String
    let vehicleID: String?

    enum CodingKeys: String, CodingKey {
        case estimatedArrival = "estimated_arrival"
        case estimatedArrivalUnix = "estimated_arrival_unix"
        case headsign
        case lineID = "line_id"
        case observedArrival = "observed_arrival"
        case observedArrivalUnix = "observed_arrival_unix"
        case patternID = "pattern_id"
        case routeID = "route_id"
        case scheduledArrival = "scheduled_arrival"
        case scheduledArrivalUnix = "scheduled_arrival_unix"
        case stopSequence = "stop_sequence"
        case tripID = "trip_id"
        case vehicleID = "vehicle_id"
    }
}
