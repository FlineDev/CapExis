import Foundation

@testable import CapExis

struct Comment {
   var text: String
   var reactions: [Reaction]

   // MARK: - Relationships
   let author: User
   let post: Post
}
