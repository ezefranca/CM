import Foundation

// MARK: - Translation
public struct Translation: Codable {
    public let language: Language
    public let text: String
}

public enum Language: String, Codable {
    case pt = "pt"
}
