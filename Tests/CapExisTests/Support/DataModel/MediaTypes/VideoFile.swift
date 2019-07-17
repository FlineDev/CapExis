@testable import CapExis

class VideoFile: MediaFile {
    var durationInSeconds: Double
    var originalResolutionInPixels: Size

    init(path: String, fileSizeInBytes: Int, durationInSeconds: Double, originalResolutionInPixels: Size) {
        self.durationInSeconds = durationInSeconds
        self.originalResolutionInPixels = originalResolutionInPixels

        super.init(path: path, fileSizeInBytes: fileSizeInBytes)
    }
}
