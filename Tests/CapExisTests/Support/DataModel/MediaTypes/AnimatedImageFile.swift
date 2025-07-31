@testable import CapExis

class AnimatedImageFile: ImageFile {
   var previewFrame: StillImageFile

   init(path: String, fileSizeInBytes: Int, imageSizeInPixels: Size, previewFrame: StillImageFile) {
      self.previewFrame = previewFrame

      super.init(path: path, fileSizeInBytes: fileSizeInBytes, imageSizeInPixels: imageSizeInPixels)
   }
}
