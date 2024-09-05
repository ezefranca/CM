import Foundation

public enum Endpoints {
    private static let baseURL = "https://api.carrismetropolitana.pt/"

    // Enum cases for all the API endpoints
    case alerts
    case vehicles
    case stops
    case stopRealtime(stopId: String)
    case lines
    case line(lineId: String)
    case routes
    case route(routeId: String)
    case patterns
    case pattern(patternId: String)
    case municipalities
    case municipality(municipalityId: String)
    case shapes
    case shape(shapeId: String)
    case encm
    case encmFacility(encmId: String)
    case schools
    case school(schoolId: String)

    // This computed property builds the full URL for each case
    public var url: URL? {
        switch self {
        case .alerts:
            return URL(string: Endpoints.baseURL + "alerts")
            
        case .vehicles:
            return URL(string: Endpoints.baseURL + "vehicles")
            
        case .stops:
            return URL(string: Endpoints.baseURL + "stops")
            
        case .stopRealtime(let stopId):
            return URL(string: Endpoints.baseURL + "stops/\(stopId)/realtime")
            
        case .lines:
            return URL(string: Endpoints.baseURL + "lines")
            
        case .line(let lineId):
            return URL(string: Endpoints.baseURL + "lines/\(lineId)")
            
        case .routes:
            return URL(string: Endpoints.baseURL + "routes")
            
        case .route(let routeId):
            return URL(string: Endpoints.baseURL + "routes/\(routeId)")
            
        case .patterns:
            return URL(string: Endpoints.baseURL + "patterns")
            
        case .pattern(let patternId):
            return URL(string: Endpoints.baseURL + "patterns/\(patternId)")
            
        case .municipalities:
            return URL(string: Endpoints.baseURL + "municipalities")
            
        case .municipality(let municipalityId):
            return URL(string: Endpoints.baseURL + "municipalities/\(municipalityId)")
            
        case .shapes:
            return URL(string: Endpoints.baseURL + "shapes")
            
        case .shape(let shapeId):
            return URL(string: Endpoints.baseURL + "shapes/\(shapeId)")
            
        case .encm:
            return URL(string: Endpoints.baseURL + "datasets/facilities/encm")
            
        case .encmFacility(let encmId):
            return URL(string: Endpoints.baseURL + "datasets/facilities/encm/\(encmId)")
            
        case .schools:
            return URL(string: Endpoints.baseURL + "datasets/facilities/schools")
            
        case .school(let schoolId):
            return URL(string: Endpoints.baseURL + "datasets/facilities/schools/\(schoolId)")
        }
    }
}
