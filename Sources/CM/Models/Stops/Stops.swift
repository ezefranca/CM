import Foundation

public typealias Stops = [Stop]

// MARK: - Stop
public struct Stop: Model {
    public let districtID: String
    public let districtName: String
    public let facilities: [String]
    public let id, lat: String
    public let lines: [String]
    public let locality: String?
    public let lon, municipalityID: String
    public let municipalityName: String
    public let name: String
    public let operationalStatus: String
    public let parishID, parishName: String?
    public let patterns: [String]
    public let regionID: String
    public let regionName: String
    public let routes: [String]
    public let shortName: String?
    public let stopID, ttsName, wheelchairBoarding: String

    enum CodingKeys: String, CodingKey {
        case districtID = "district_id"
        case districtName = "district_name"
        case facilities, id, lat, lines, locality, lon
        case municipalityID = "municipality_id"
        case municipalityName = "municipality_name"
        case name
        case operationalStatus = "operational_status"
        case parishID = "parish_id"
        case parishName = "parish_name"
        case patterns
        case regionID = "region_id"
        case regionName = "region_name"
        case routes
        case shortName = "short_name"
        case stopID = "stop_id"
        case ttsName = "tts_name"
        case wheelchairBoarding = "wheelchair_boarding"
    }
    
    public static func < (lhs: Stop, rhs: Stop) -> Bool {
        lhs.id == rhs.id
    }
}
