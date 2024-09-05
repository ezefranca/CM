import Foundation

public class VehicleManager {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    public func getVehicles() async throws -> [Vehicle] {
        guard let url = Endpoints.vehicles.url else {
            throw URLError(.badURL)
        }
        
        let vehicles: [Vehicle] = try await apiClient.fetch(url: url)
        return vehicles
    }
}
