import Foundation

public class VehicleRoutes {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    public func fetchVehicles() async throws -> Vehicles {
        guard let url = Endpoints.vehicles.url else {
            throw URLError(.badURL)
        }
        
        let vehicles: Vehicles = try await apiClient.fetch(url: url)
        return vehicles
    }
}
