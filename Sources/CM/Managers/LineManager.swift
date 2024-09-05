import Foundation

public class LineManager {
    private let apiClient = APIClient.shared

    public init() {}

    // Fetch all lines
    public func getLines() async throws -> [Line] {
        guard let url = Endpoints.lines.url else {
            throw URLError(.badURL)
        }

        let lines: [Line] = try await apiClient.fetch(url: url)
        return lines
    }

    // Fetch a specific line by ID
    public func getLine(lineId: String) async throws -> Line {
        guard let url = Endpoints.line(lineId: lineId).url else {
            throw URLError(.badURL)
        }

        let line: Line = try await apiClient.fetch(url: url)
        return line
    }
}
