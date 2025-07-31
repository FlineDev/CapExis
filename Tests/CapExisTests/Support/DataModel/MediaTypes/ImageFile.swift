@testable import CapExis

class ImageFile: MediaFile {
   var imageSizeInPixels: Size

   init(path: String, fileSizeInBytes: Int, imageSizeInPixels: Size) {
      self.imageSizeInPixels = imageSizeInPixels

      super.init(path: path, fileSizeInBytes: fileSizeInBytes)
   }
}
