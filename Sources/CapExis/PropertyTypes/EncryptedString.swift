import CryptoSwift
import Foundation
import HandySwift

/// A two-way key-based symmetric encryption wrapper to use for storing any kind data. Use for sensitive data that needs to be read.
///
/// - NOTE: The saved data can only be read if the key is correct.
/// - WARNING: Don't use this for sensible data, that is only needed for comparison. Use `FastHashedString` or `SecureHashedString` instead.
public struct EncryptedString: Codable {
    private let hashedKey: SecureHashedString
    private let ciphertext: [UInt8]
    private let initialVector: [UInt8]

    /// Initializes an EcryptedString from a given plaintext String by crypting it with the given key.
    public init(_ plaintext: String, key: String) throws {
        let initialVector = ChaCha20.randomIV(12)
        let plaintextBytes = Array(plaintext.utf8)

        let keyBytes = key.bytes.sha256()

        self.hashedKey = try SecureHashedString(key)

        self.ciphertext = try ChaCha20(key: keyBytes, iv: initialVector).encrypt(plaintextBytes)
        self.initialVector = initialVector
    }

    /// Decrypts the encrypted String to it's plaintext using the given encryption key.
    ///
    /// - Parameter key: The key to decrypt the encrypted data with.
    public func plaintext(decryptingWithKey key: String) throws -> String? {
        guard try hashedKey.plaintextEquals(to: key) else { return nil }

        let keyBytes = key.bytes.sha256()
        let plaintextBytes = try ChaCha20(key: keyBytes, iv: initialVector).decrypt(ciphertext)

        return String(bytes: plaintextBytes, encoding: .utf8)!
    }
}
