import Foundation

public class StopManager {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    // Fetch all service alerts
    public func getStops() async throws -> Stops {
        guard let url = Endpoints.stops.url else {
            throw URLError(.badURL)
        }
        
        let stops: Stops = try await apiClient.fetch(url: url)
        return stops
    }
}
