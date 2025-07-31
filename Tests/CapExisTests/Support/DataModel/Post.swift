import Foundation

@testable import CapExis

class Post {
   // MARK: - Properties
   var text: String
   var reactions: [Reaction] = []

   // MARK: - Relationships
   var tags: [Tag] = []
   var comments: [Comment] = []

   init(text: String) {
      self.text = text
   }
}
