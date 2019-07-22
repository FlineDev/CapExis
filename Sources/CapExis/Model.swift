import Foundation

protocol Model: Codable {
    static var tableName: String { get }
}

extension Model {
    static var tableName: String {
        return String(describing: Self.self)
    }
}
