@testable import CapExis
import Foundation

struct Tag {
    // MARK: - Properties
    let name: String

    // MARK: - Relationships
    var posts: [Post]
}
