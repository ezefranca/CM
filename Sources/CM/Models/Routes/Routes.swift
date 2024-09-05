import Foundation

public typealias Routes = [Route]
// MARK: - Route
public struct Route: Codable {
    public let color: String
    public let facilities: [String?]
    public let id, lineID: String
    public let localities: [String?]
    public let longName: String
    public let municipalities, patterns: [String]
    public let shortName: String
    public let textColor: String

    enum CodingKeys: String, CodingKey {
        case color, facilities, id
        case lineID = "line_id"
        case localities
        case longName = "long_name"
        case municipalities, patterns
        case shortName = "short_name"
        case textColor = "text_color"
    }
}
