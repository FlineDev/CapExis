@testable import CapExis

class AudioFile: MediaFile {
    var durationInSeconds: Double

    init(path: String, fileSizeInBytes: Int, durationInSeconds: Double) {
        self.durationInSeconds = durationInSeconds

        super.init(path: path, fileSizeInBytes: fileSizeInBytes)
    }
}
