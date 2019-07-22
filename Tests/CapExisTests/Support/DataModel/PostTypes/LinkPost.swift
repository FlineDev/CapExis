@testable import CapExis
import Foundation

class LinkPost: Post {
    var linkUrl: URL

    init(text: String, linkUrl: URL) {
        self.linkUrl = linkUrl

        super.init(text: text)
    }
}
