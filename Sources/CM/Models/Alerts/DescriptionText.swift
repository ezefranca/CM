import Foundation

// MARK: - DescriptionText
public struct DescriptionText: Model {
    public var id: UUID = .init()
    public let translation: [Translation]
    
    enum CodingKeys: CodingKey {
        case translation
    }
    
    public static func < (lhs: DescriptionText, rhs: DescriptionText) -> Bool {
        lhs.id == rhs.id
    }
}
