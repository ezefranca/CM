public protocol Model:
    Codable,
    Hashable,
    Equatable,
    Identifiable,
    Comparable,
    Sendable {}
