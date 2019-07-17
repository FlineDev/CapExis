@testable import CapExis

class ArticlePost: Post {
    var title: String
    var subtitle: String
    var headerMedia: MediaFile?
    var richTextContents: RichText

    init(text: String, title: String, subtitle: String, headerMedia: MediaFile?, richTextContents: RichText) {
        self.title = title
        self.subtitle = subtitle
        self.headerMedia = headerMedia
        self.richTextContents = richTextContents

        super.init(text: text)
    }
}
