import Foundation

public typealias Lines = [Line]

// MARK: - Line
public struct Line: Model {
    public let color: String
    public let facilities: [String?]
    public let id: String
    public let localities: [String?]
    public let longName: String
    public let municipalities, patterns, routes: [String]
    public let shortName: String
    public let textColor: String

    enum CodingKeys: String, CodingKey {
        case color, facilities, id, localities
        case longName = "long_name"
        case municipalities, patterns, routes
        case shortName = "short_name"
        case textColor = "text_color"
    }
    
    public static func < (lhs: Line, rhs: Line) -> Bool {
        lhs.id == rhs.id
    }
}
