import Foundation

public class RouteManager {
    private let apiClient = APIClient.shared

    public init() {}

    // Fetch all routes
    public func getRoutes() async throws -> [Route] {
        guard let url = Endpoints.routes.url else {
            throw URLError(.badURL)
        }

        let routes: [Route] = try await apiClient.fetch(url: url)
        return routes
    }

    // Fetch a specific route by ID
    public func getRoute(routeId: String) async throws -> Route {
        guard let url = Endpoints.route(routeId: routeId).url else {
            throw URLError(.badURL)
        }

        let route: Route = try await apiClient.fetch(url: url)
        return route
    }
}
