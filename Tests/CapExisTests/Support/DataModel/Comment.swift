@testable import CapExis
import Foundation

struct Comment {
    var text: String
    var reactions: [Reaction]

    // MARK: - Relationships
    let author: User
    let post: Post
}
