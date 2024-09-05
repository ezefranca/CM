import Foundation

// MARK: - Municipality
public struct Municipality: Codable {
    public let districtID: String
    public let districtName: String
    public let id, name, municipalityPrefix: String
    public let regionID: String
    public let regionName: String

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
