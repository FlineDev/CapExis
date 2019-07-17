@testable import CapExis

class MediaFile {
    var path: String
    var fileSizeInBytes: Int

    init(path: String, fileSizeInBytes: Int) {
        self.path = path
        self.fileSizeInBytes = fileSizeInBytes
    }
}
