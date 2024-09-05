import Foundation

// MARK: - Translation
public struct Translation: Model {
    public var id: UUID = .init()
    public let language: String
    public let text: String
    
    enum CodingKeys: CodingKey {
        case language
        case text
    }
    
    public static func < (lhs: Translation, rhs: Translation) -> Bool {
        lhs.text == rhs.text
    }
}
