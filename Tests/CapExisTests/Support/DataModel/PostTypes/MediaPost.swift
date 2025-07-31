@testable import CapExis

class MediaPost: Post {
   let mediaFile: MediaFile

   init(text: String, mediaFile: MediaFile) {
      self.mediaFile = mediaFile

      super.init(text: text)
   }
}
