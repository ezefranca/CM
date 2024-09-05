import Foundation

public typealias Schools = [School]

// MARK: - School
public struct School: Codable {
    let address: String
    let cicles: [Cicle]
    let districtID: String
    let districtName: String
    let email, grouping, id, lat: String
    let locality, lon, municipalityID: String
    let municipalityName: String
    let name: String
    let nature: Nature
    let parishID: String
    let parishName: String
    let phone, postalCode: String
    let regionID: String
    let regionName: String
    let stops: [String]
    let url: String

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
}

public enum Cicle: String, Codable {
    case artistic = "artistic"
    case basic1 = "basic_1"
    case basic2 = "basic_2"
    case basic3 = "basic_3"
    case highSchool = "high_school"
    case other = "other"
    case preSchool = "pre_school"
    case professional = "professional"
    case special = "special"
    case university = "university"
}

public enum Nature: String, Codable {
    case empty = ""
    case naturePrivate = "private"
    case naturePublic = "public"
}
