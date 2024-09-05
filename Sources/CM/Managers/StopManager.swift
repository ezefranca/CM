import Foundation

public class StopManager {
    private let stopRoutes = StopRoutes()
    
    public init() {}
    
    public func getRealTimeArrivals(stopId: String) async throws -> [RealTimeArrival] {
        return try await stopRoutes.fetchRealTimeArrivals(stopId: stopId)
    }
}
