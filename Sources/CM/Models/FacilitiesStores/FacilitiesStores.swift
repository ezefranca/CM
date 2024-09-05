import Foundation

public typealias FacilitiesStores = [FacilityStore]

// MARK: - Facility
public struct FacilityStore: Codable {
    let activeCounters: Int
    let address: String
    let brandName: String
    let currentRatio: Double
    let currentStatus: String
    let currentlyWaiting: Int
    let districtID, districtName, email: String
    let expectedWaitTime: Int
    let googlePlaceID: String
    let hoursFriday, hoursMonday, hoursSaturday: [String]
    let hoursSpecial: String
    let hoursSunday, hoursThursday, hoursTuesday, hoursWednesday: [String]
    let id: String
    let isOpen: Bool
    let lat, locality, lon, municipalityID: String
    let municipalityName, name, parishID, parishName: String
    let phone, postalCode: String
    let regionID: String
    let regionName: String
    let shortName: String
    let stops: [String]
    let url: String

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
}
