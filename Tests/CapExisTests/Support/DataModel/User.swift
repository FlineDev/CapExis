import Foundation

@testable import CapExis

struct User {
   // MARK: - Properties
   var name: String
   var password: SecureHashedString

   var email: String?
   var birthday: Date?
   var gender: Gender?

   // MARK: - Relationships
   var posts: [Post]
   var reactions: [Reaction]
   var comments: [Comment]
}
