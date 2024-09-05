import Foundation

public typealias FacilitiesStores = [FacilityStore]

// MARK: - Facility
public struct FacilityStore: Model {
    public let activeCounters: Int
    public let address: String
    public let brandName: String
    public let currentRatio: Double
    public let currentStatus: String
    public let currentlyWaiting: Int
    public let districtID, districtName, email: String
    public let expectedWaitTime: Int
    public let googlePlaceID: String
    public let hoursFriday, hoursMonday, hoursSaturday: [String]
    public let hoursSpecial: String
    public let hoursSunday, hoursThursday, hoursTuesday, hoursWednesday: [String]
    public let id: String
    public let isOpen: Bool
    public let lat, locality, lon, municipalityID: String
    public let municipalityName, name, parishID, parishName: String
    public let phone, postalCode: String
    public let regionID: String
    public let regionName: String
    public let shortName: String
    public let stops: [String]
    public let url: String

    enum CodingKeys: String, CodingKey {
        case activeCounters = "active_counters"
        case address
        case brandName = "brand_name"
        case currentRatio = "current_ratio"
        case currentStatus = "current_status"
        case currentlyWaiting = "currently_waiting"
        case districtID = "district_id"
        case districtName = "district_name"
        case email
        case expectedWaitTime = "expected_wait_time"
        case googlePlaceID = "google_place_id"
        case hoursFriday = "hours_friday"
        case hoursMonday = "hours_monday"
        case hoursSaturday = "hours_saturday"
        case hoursSpecial = "hours_special"
        case hoursSunday = "hours_sunday"
        case hoursThursday = "hours_thursday"
        case hoursTuesday = "hours_tuesday"
        case hoursWednesday = "hours_wednesday"
        case id
        case isOpen = "is_open"
        case lat, locality, lon
        case municipalityID = "municipality_id"
        case municipalityName = "municipality_name"
        case name
        case parishID = "parish_id"
        case parishName = "parish_name"
        case phone
        case postalCode = "postal_code"
        case regionID = "region_id"
        case regionName = "region_name"
        case shortName = "short_name"
        case stops, url
    }
    
    public static func < (lhs: FacilityStore, rhs: FacilityStore) -> Bool {
        lhs.id == rhs.id
    }
}
