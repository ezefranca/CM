import Foundation

public typealias Lines = [Line]

// MARK: - Line
public struct Line: Codable {
    let color: String
    let facilities: [String?]
    let id: String
    let localities: [String?]
    let longName: String
    let municipalities, patterns, routes: [String]
    let shortName: String
    let textColor: String

    enum CodingKeys: String, CodingKey {
        case color, facilities, id, localities
        case longName = "long_name"
        case municipalities, patterns, routes
        case shortName = "short_name"
        case textColor = "text_color"
    }
}
