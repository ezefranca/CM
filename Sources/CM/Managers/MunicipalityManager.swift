import Foundation

public class MunicipalityManager {
    private let apiClient = APIClient.shared

    public init() {}

    // Fetch all municipalities
    public func getMunicipalities() async throws -> [Municipality] {
        guard let url = Endpoints.municipalities.url else {
            throw URLError(.badURL)
        }

        let municipalities: [Municipality] = try await apiClient.fetch(url: url)
        return municipalities
    }

    // Fetch a specific municipality by ID
    public func getMunicipality(municipalityId: String) async throws -> Municipality {
        guard let url = Endpoints.municipality(municipalityId: municipalityId).url else {
            throw URLError(.badURL)
        }

        let municipality: Municipality = try await apiClient.fetch(url: url)
        return municipality
    }
}
