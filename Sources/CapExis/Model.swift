import Foundation

protocol Model: Codable {
   static var tableName: String { get }
}

extension Model {
   static var tableName: String {
      String(describing: Self.self)
   }
}
