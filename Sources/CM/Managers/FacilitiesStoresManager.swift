import Foundation

public class FacilitiesStoresManager {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    // Fetch all ENCM facilities
    public func getAllENCMFacilities() async throws -> FacilitiesStores {
        guard let url = Endpoints.encm.url else {
            throw URLError(.badURL)
        }
        
        let facilities: FacilitiesStores = try await apiClient.fetch(url: url)
        return facilities
    }
    
    // Fetch a specific ENCM facility by ID
    public func getENCMFacility(encmId: String) async throws -> FacilityStore {
        guard let url = Endpoints.encmFacility(encmId: encmId).url else {
            throw URLError(.badURL)
        }
        
        let facility: FacilityStore = try await apiClient.fetch(url: url)
        return facility
    }
}
