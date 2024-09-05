import Foundation

public class SchoolManager {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    // Fetch all schools
    public func getAllSchools() async throws -> [School] {
        guard let url = Endpoints.schools.url else {
            throw URLError(.badURL)
        }
        
        let schools: [School] = try await apiClient.fetch(url: url)
        return schools
    }
    
    // Fetch a specific school by ID
    public func getSchool(schoolId: String) async throws -> School {
        guard let url = Endpoints.school(schoolId: schoolId).url else {
            throw URLError(.badURL)
        }
        
        let school: School = try await apiClient.fetch(url: url)
        return school
    }
}
