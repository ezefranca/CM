import Foundation

// MARK: - Translation
public struct Translation: Codable {
    let language: Language
    let text: String
}

public enum Language: String, Codable {
    case pt = "pt"
}
