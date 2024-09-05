import Foundation

public typealias Routes = [Route]
// MARK: - Route
public struct Route: Codable {
    let color: String
    let facilities: [String?]
    let id, lineID: String
    let localities: [String?]
    let longName: String
    let municipalities, patterns: [String]
    let shortName: String
    let textColor: String

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
