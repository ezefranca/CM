import Foundation

public typealias RealTimeArrivals = [RealTimeArrival]

// MARK: - RealTimeArrival
public struct RealTimeArrival: Codable {
    public let estimatedArrival: String?
    public let estimatedArrivalUnix: Int?
    public let headsign: String
    public let lineID: String
    public let observedArrival: String?
    public let observedArrivalUnix: Int?
    public let patternID: String
    public let routeID: String
    public let scheduledArrival: String
    public let scheduledArrivalUnix, stopSequence: Int
    public let tripID: String
    public let vehicleID: String?

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
