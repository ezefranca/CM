import Foundation

// MARK: - Municipality
public struct Municipality: Codable {
    let districtID: String
    let districtName: String
    let id, name, municipalityPrefix: String
    let regionID: String
    let regionName: String

    enum CodingKeys: String, CodingKey {
        case districtID = "district_id"
        case districtName = "district_name"
        case id, name
        case municipalityPrefix = "prefix"
        case regionID = "region_id"
        case regionName = "region_name"
    }
}

public typealias Municipalities = [Municipality]
