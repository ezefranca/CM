import Foundation
import ZippyJSON

public class APIClient {
    public static let shared = APIClient()
    private let session: URLSession

    private init(session: URLSession = .shared) {
        self.session = session
    }
    
    // Fetch data from an endpoint
    public func fetch<T: Codable>(url: URL) async throws -> T {
        let (data, response) = try await session.data(from: url)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        let decoder = ZippyJSONDecoder()
        let decodedData = try decoder.decode(T.self, from: data)
        return decodedData
    }
}
