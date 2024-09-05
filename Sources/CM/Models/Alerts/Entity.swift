import Foundation

// MARK: - Entity
public struct Entity: Model {
    public let id: String
    public let alert: Alert
    
    enum CodingKeys: CodingKey {
        case id
        case alert
    }
    
    public static func < (lhs: Entity, rhs: Entity) -> Bool {
        lhs.id == rhs.id
    }
}
