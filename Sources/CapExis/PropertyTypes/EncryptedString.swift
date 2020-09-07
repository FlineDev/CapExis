import CryptoKit
import Foundation
import HandySwift

/// A two-way key-based symmetric encryption wrapper to use for storing any kind of data. Use for sensitive data that needs to be read.
///
/// - NOTE: The saved data can only be read if the key is correct.
/// - WARNING: Don't use this for sensible data that is only needed for comparison. Use `FastHashedString` or `SecureHashedString` instead.
public struct EncryptedString: Codable {
    /// Includes the combined data, including the ciphertext, the nonce and the authentication tag.
    private let encryptedContent: Data

    /// Initializes an `EcryptedString` from a given plaintext `String` by crypting it with the given key.
    public init(_ plaintext: String, key: String) throws {
        let hashedKey = SHA256.hash(data: key.data(using: .utf8)!)
        let symmetricKey = SymmetricKey(data: hashedKey)
        let plaintextData = plaintext.data(using: .utf8)!

        self.encryptedContent = try ChaChaPoly.seal(plaintextData, using: symmetricKey).combined
    }

    /// Decrypts the encrypted `String` to it's plaintext using the given encryption key.
    ///
    /// - Parameter key: The key to decrypt the encrypted data with.
    public func plaintext(decryptingWithKey key: String) throws -> String {
        let hashedKey = SHA256.hash(data: key.data(using: .utf8)!)
        let symmetricKey = SymmetricKey(data: hashedKey)
        let sealedBox = try ChaChaPoly.SealedBox(combined: encryptedContent)
        let plaintextData = try ChaChaPoly.open(sealedBox, using: symmetricKey)
        return String(data: plaintextData, encoding: .utf8)!
    }
}
