import Foundation

public class AlertManager {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    // Fetch all service alerts
    public func getAlerts() async throws -> Alerts {
        guard let url = Endpoints.alerts.url else {
            throw URLError(.badURL)
        }
        
        let alerts: Alerts = try await apiClient.fetch(url: url)
        return alerts
    }
}
