import Foundation

public class StopRoutes {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    public func fetchRealTimeArrivals(stopId: String) async throws -> RealTimeArrivals {
        guard let url = Endpoints.stopRealtime(stopId: stopId).url else {
            throw URLError(.badURL)
        }
        
        let arrivals: RealTimeArrivals = try await apiClient.fetch(url: url)
        return arrivals
    }
}
