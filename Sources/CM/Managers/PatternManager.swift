import Foundation

public class PatternManager {
    private let apiClient = APIClient.shared
    
    public init() {}
    
    // Fetch a specific pattern by ID
    public func getPattern(patternId: String) async throws -> Patterns {
        guard let url = Endpoints.pattern(patternId: patternId).url else {
            throw URLError(.badURL)
        }
        
        let pattern: Patterns = try await apiClient.fetch(url: url)
        return pattern
    }
}
