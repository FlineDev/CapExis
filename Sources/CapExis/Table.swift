import Foundation

struct Table<T: Model>: Codable {
   var objectCount: Int
   var objects: [T]
}
