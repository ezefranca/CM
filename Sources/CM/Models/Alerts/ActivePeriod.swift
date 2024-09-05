import Foundation

// MARK: - ActivePeriod
public struct ActivePeriod: Model {
    public let start, end: Int
    
    enum CodingKeys: CodingKey {
        case start
        case end
    }
    
    public var id: UUID = UUID()
    
    public static func < (lhs: ActivePeriod, rhs: ActivePeriod) -> Bool {
        lhs.id == rhs.id
    }
}
