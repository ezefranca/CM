import Foundation

public class RealTimeManager {
    private let apiClient = APIClient.shared

    public init() {}

    // Fetch real-time arrivals for a specific stop
    public func getRealTimeArrivals(forStopId stopId: String) async throws -> RealTimeArrivals {
        guard let url = Endpoints.stopRealtime(stopId: stopId).url else {
            throw URLError(.badURL)
        }

        let arrivals: RealTimeArrivals = try await apiClient.fetch(url: url)
        return arrivals
    }
}
