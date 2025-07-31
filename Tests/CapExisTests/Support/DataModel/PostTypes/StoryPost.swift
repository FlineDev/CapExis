@testable import CapExis

class StoryPost: Post {
   var mediaFiles: [MediaFile]

   init(text: String, mediaFiles: [MediaFile]) {
      self.mediaFiles = mediaFiles

      super.init(text: text)
   }
}
