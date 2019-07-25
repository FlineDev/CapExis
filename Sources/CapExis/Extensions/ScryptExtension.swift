import CryptoSwift

extension Scrypt {
    /// Initializes an Scrypt object with sensible parameter defaults.
    convenience init(password: [UInt8], salt: [UInt8], derivedKeyLength: Int = 64) throws {
        // sensible defaults according to CryptoSwift README and to blog post:
        // https://blog.ircmaxell.com/2014/03/why-i-dont-recommend-scrypt.html
        let cpuMemoryCostN: Int = 16_384 // 2^14
        let readBlocksize: Int = 8
        let parallelization: Int = 1

        try self.init(
            password: password,
            salt: salt,
            dkLen: derivedKeyLength,
            N: cpuMemoryCostN,
            r: readBlocksize,
            p: parallelization
        )
    }
}
