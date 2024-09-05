import Foundation

public typealias Schools = [School]

// MARK: - School
public struct School: Model {
    public let address: String
    public let cicles: [String]
    public let districtID: String
    public let districtName: String
    public let email, grouping, id, lat: String
    public let locality, lon, municipalityID: String
    public let municipalityName: String
    public let name: String
    public let nature: String
    public let parishID: String
    public let parishName: String
    public let phone, postalCode: String
    public let regionID: String
    public let regionName: String
    public let stops: [String]
    public let url: String

    enum CodingKeys: String, CodingKey {
        case address, cicles
        case districtID = "district_id"
        case districtName = "district_name"
        case email, grouping, id, lat, locality, lon
        case municipalityID = "municipality_id"
        case municipalityName = "municipality_name"
        case name, nature
        case parishID = "parish_id"
        case parishName = "parish_name"
        case phone
        case postalCode = "postal_code"
        case regionID = "region_id"
        case regionName = "region_name"
        case stops, url
    }
    
    public static func < (lhs: School, rhs: School) -> Bool {
        lhs.id == rhs.id
    }
}
