import CryptoSwift

extension Scrypt {
    /// Initializes an Scrypt object with sensible parameter defaults.
    convenience init(password: String, salt: String) throws {
        let passwordBytes: [UInt8] = Array(password.utf8)
        let saltBytes: [UInt8] = Array(salt.utf8)

        // sensible defaults according to CryptoSwift README and https://blog.ircmaxell.com/2014/03/why-i-dont-recommend-scrypt.html
        let derivedKeyLength: Int = 64
        let cpuMemoryCostN: Int = 16_384 // 2^14
        let readBlocksize: Int = 8
        let parallelization: Int = 1

        try self.init(
            password: passwordBytes,
            salt: saltBytes,
            dkLen: derivedKeyLength,
            N: cpuMemoryCostN,
            r: readBlocksize,
            p: parallelization
        )
    }

    /// Runs the key derivation function with a specific password and returns a UTF8 String representation of the results.
    func calculateString() throws -> String {
        let hashBytes: [UInt8] = try calculate()
        return String(bytes: hashBytes, encoding: .utf8)!
    }
}
