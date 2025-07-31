import Foundation

@testable import CapExis

struct Tag {
   // MARK: - Properties
   let name: String

   // MARK: - Relationships
   var posts: [Post]
}
