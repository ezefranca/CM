import Foundation

// MARK: - Alerts
public struct Alerts: Model {
    public var id: UUID = .init()
    public let header: Header
    public let entity: [Entity]
    
    enum CodingKeys: CodingKey {
        case header
        case entity
    }
    
    public static func == (lhs: Alerts, rhs: Alerts) -> Bool {
        lhs.id == rhs.id
    }
    
    public static func < (lhs: Alerts, rhs: Alerts) -> Bool {
        lhs.entity.count < rhs.entity.count
    }
}

// MARK: - Alert
public struct Alert: Model {
    public var id: UUID = .init()
    public let activePeriod: [ActivePeriod]
    public let informedEntity: [InformedEntity]
    public let cause: String
    public let effect: String
    public let url, headerText, descriptionText: DescriptionText
    public let image: Image
    
    enum CodingKeys: CodingKey {
        case activePeriod
        case informedEntity
        case cause
        case effect
        case url
        case headerText
        case descriptionText
        case image
    }
    
    public static func == (lhs: Alert, rhs: Alert) -> Bool {
        lhs.id == rhs.id
    }
    
    public static func < (lhs: Alert, rhs: Alert) -> Bool {
        lhs.activePeriod.count < rhs.activePeriod.count
    }
}

// MARK: - Image
public struct Image: Model {
    public var id: UUID = .init()
    public let localizedImage: [LocalizedImage]
    
    enum CodingKeys: CodingKey {
        case localizedImage
    }
    
    public static func == (lhs: Image, rhs: Image) -> Bool {
        lhs.id == rhs.id
    }
    
    public static func < (lhs: Image, rhs: Image) -> Bool {
        lhs.localizedImage.first == rhs.localizedImage.first &&
        lhs.localizedImage.last == rhs.localizedImage.last
    }
}

// MARK: - LocalizedImage
public struct LocalizedImage: Model {
    public var id: UUID = .init()
    public let language: String
    public let mediaType: String
    public let url: String
    
    enum CodingKeys: CodingKey {
        case language
        case mediaType
        case url
    }
    
    public static func < (lhs: LocalizedImage, rhs: LocalizedImage) -> Bool {
        true
    }
}

// MARK: - InformedEntity
public struct InformedEntity: Model {
    public var id: UUID = .init()
    public let routeID, stopID: String?

    enum CodingKeys: String, CodingKey {
        case routeID = "routeId"
        case stopID = "stopId"
    }
    
    public static func < (lhs: InformedEntity, rhs: InformedEntity) -> Bool {
        lhs.stopID == rhs.stopID && lhs.routeID == rhs.routeID
    }
}

// MARK: - Header
public struct Header: Model {
    public var id: UUID = .init()
    public let gtfsRealtimeVersion, incrementality: String
    public let timestamp: Int
    
    enum CodingKeys: CodingKey {
        case gtfsRealtimeVersion
        case incrementality
        case timestamp
    }
    
    public static func < (lhs: Header, rhs: Header) -> Bool {
        lhs.timestamp == rhs.timestamp
    }
}
