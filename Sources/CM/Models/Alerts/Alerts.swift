import Foundation

// MARK: - Alerts
public struct Alerts: Codable {
    public let header: Header
    public let entity: [Entity]
}

// MARK: - Alert
public struct Alert: Codable {
    public let activePeriod: [ActivePeriod]
    public let informedEntity: [InformedEntity]
    public let cause: Cause
    public let effect: Effect
    public let url, headerText, descriptionText: DescriptionText
    public let image: Image
}

public enum Cause: String, Codable {
    case construction = "CONSTRUCTION"
    case demonstration = "DEMONSTRATION"
    case unknownCause = "UNKNOWN_CAUSE"
}

public enum Effect: String, Codable {
    case additionalService = "ADDITIONAL_SERVICE"
    case detour = "DETOUR"
    case modifiedService = "MODIFIED_SERVICE"
    case noService = "NO_SERVICE"
    case otherEffect = "OTHER_EFFECT"
    case significantDelays = "SIGNIFICANT_DELAYS"
    case stopMoved = "STOP_MOVED"
}

// MARK: - Image
public struct Image: Codable {
    public let localizedImage: [LocalizedImage]
}

// MARK: - LocalizedImage
public struct LocalizedImage: Codable {
    public let language: Language
    public let mediaType: MediaType
    public let url: String
}

public enum MediaType: String, Codable {
    case empty = ""
    case imagePNG = "image/png"
}

// MARK: - InformedEntity
public struct InformedEntity: Codable {
    public let routeID, stopID: String?

    enum CodingKeys: String, CodingKey {
        case routeID = "routeId"
        case stopID = "stopId"
    }
}

// MARK: - Header
public struct Header: Codable {
    public let gtfsRealtimeVersion, incrementality: String
    public let timestamp: Int
}
