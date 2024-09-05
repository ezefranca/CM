import Foundation

// MARK: - Alerts
public struct Alerts: Codable {
    let header: Header
    let entity: [Entity]
}

// MARK: - Alert
public struct Alert: Codable {
    let activePeriod: [ActivePeriod]
    let informedEntity: [InformedEntity]
    let cause: Cause
    let effect: Effect
    let url, headerText, descriptionText: DescriptionText
    let image: Image
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
    let localizedImage: [LocalizedImage]
}

// MARK: - LocalizedImage
public struct LocalizedImage: Codable {
    let language: Language
    let mediaType: MediaType
    let url: String
}

public enum MediaType: String, Codable {
    case empty = ""
    case imagePNG = "image/png"
}

// MARK: - InformedEntity
public struct InformedEntity: Codable {
    let routeID, stopID: String?

    enum CodingKeys: String, CodingKey {
        case routeID = "routeId"
        case stopID = "stopId"
    }
}

// MARK: - Header
public struct Header: Codable {
    let gtfsRealtimeVersion, incrementality: String
    let timestamp: Int
}
